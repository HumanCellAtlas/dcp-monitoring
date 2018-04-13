variable "aws_profile" {}
data "aws_caller_identity" "current" {}

variable "aws_region" {
  default = "us-east-1"
}

provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

////
// general setup
//

// the bucket must be configured with the -backend-config flag on `terraform init`

terraform {
  backend "s3" {
    key = "health-check/app.tfstate"
  }
}

////
//  Health check app
//

resource "aws_iam_role" "health_check" {
  name = "health-check"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "health_check" {
  name   = "health-check"
  role   = "${aws_iam_role.health_check.name}"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": "arn:aws:logs:*:*:*"
        },
        {
            "Effect": "Allow",
            "Action": "logs:CreateLogGroup",
            "Resource": "arn:aws:logs:*:*:*"
        },
        {
            "Effect": "Allow",
            "Action": "cloudwatch:PutMetricData",
            "Resource": "*"
        }
    ]
}
EOF
  depends_on = [
    "aws_iam_role.health_check"
  ]
}

data "archive_file" "lambda_zip" {
  type = "zip"
  source_dir = "./target"
  output_path = "./lambda.zip"
}

resource "aws_lambda_function" "health_check" {
  function_name = "health-check"
  description = "Checks the health of DCP services"
  filename = "${data.archive_file.lambda_zip.output_path}"
  role = "${aws_iam_role.health_check.arn}"
  handler = "app.handler"
  runtime = "python3.6"
  memory_size = 256
  timeout = 120
  source_code_hash = "${base64sha256(file("${data.archive_file.lambda_zip.output_path}"))}"
  depends_on = [
    "data.archive_file.lambda_zip"
  ]
}


////
//  Timer
//

resource "aws_cloudwatch_event_rule" "health_check" {
  name = "dcp-health-check"
  description = "Trigger the health check app"
  schedule_expression = "rate(2 minutes)"
}

resource "aws_lambda_permission" "dss" {
  statement_id = "AllowExecutionFromCloudWatch"
  principal = "events.amazonaws.com"
  action = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.health_check.function_name}"
  source_arn = "${aws_cloudwatch_event_rule.health_check.arn}"
  depends_on = [
    "aws_lambda_function.health_check"
  ]
}

resource "aws_cloudwatch_event_target" "dss" {
  rule      = "${aws_cloudwatch_event_rule.health_check.name}"
  target_id = "SendToSNS-dss"
  arn       = "${aws_lambda_function.health_check.arn}"
  input = <<EOF
{
  "service": "dss",
  "endpoint": "https://dss.data.humancellatlas.org"
}
EOF
}

resource "aws_cloudwatch_event_target" "google" {
  rule      = "${aws_cloudwatch_event_rule.health_check.name}"
  target_id = "SendToSNS-google"
  arn       = "${aws_lambda_function.health_check.arn}"
  input = <<EOF
{
  "service": "google",
  "endpoint": "https://google.com"
}
EOF
}
