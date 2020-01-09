resource "aws_iam_user" "grafana_datasource" {
  name = "grafana-cloudwatch-datasource"
}

resource "aws_iam_policy" "grafana_datasource" {
  name        = "grafana-cloudwatch-datasource"
  description = "Credentials for grafana to access CloudWatch Metrics and Logs ElasticSearch"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricStatistics"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "grafana_datasource" {
  name       = "grafana-cloudwatch-datasource"
  users      = ["${aws_iam_user.grafana_datasource.name}"]
  policy_arn =  aws_iam_policy.grafana_datasource.arn
}

resource "aws_iam_access_key" "grafana_datasource" {
  user =  aws_iam_user.grafana_datasource.name
}

data "aws_secretsmanager_secret" "config" {
  name = "dcp-monitoring/_/gcp-credentials.json"
}

data "aws_secretsmanager_secret_version" "config" {
  secret_id =  data.aws_secretsmanager_secret.config.id
}

data "external" "json" {
  program = ["echo", "${data.aws_secretsmanager_secret_version.config.secret_string}"]
}

locals {
  aws_cloudwatch_data_source_name        = "account-cloudwatch"
  aws_logs_data_source_name              = "account-elasticsearch"
  gcp_log_project_datasource_name        = "gcp-logs-project"
  gcp_monitoring_project_datasource_name = "gcp-monitoring-project"

  aws_cloudwatch_datasource = <<EOF
{
  "name": "${local.aws_cloudwatch_data_source_name}",
  "type": "cloudwatch",
  "url": "http://monitoring.${var.region}.amazonaws.com",
  "access": "proxy",
  "jsonData": {
    "authType": "keys",
    "defaultRegion": "${var.region}"
  },
  "secureJsonData": {
    "accessKey": "${aws_iam_access_key.grafana_datasource.id}",
    "secretKey": "${aws_iam_access_key.grafana_datasource.secret}"
  },
  "readOnly": false
}
EOF

  aws_logs_data_source = <<EOF
{
  "name": "${local.aws_logs_data_source_name}",
  "type": "elasticsearch",
  "database": "[cwl-]YYYY-MM-DD",
  "url": "http://0.0.0.0:9200",
  "access": "proxy",
  "jsonData": {
    "interval": "Daily",
    "timeFiled": "@timestamp"
  },
  "readOnly": false
}
EOF

  gcp_log_project_datasource = <<EOF
{
  "name": "${local.gcp_log_project_datasource_name}",
  "type": "stackdriver",
  "access": "proxy",
  "isDefault": false,
  "readOnly": false,
  "jsonData": {
    "authenticationType": "jwt",
    "tokenUri": "https://accounts.google.com/o/oauth2/token",
    "defaultProject": "${var.gcp_logs_project_id}",
    "clientEmail": "${lookup(data.external.json.result, "client_email")}"
  },
  "secureJsonData": {
    "privateKey": "${replace(lookup(data.external.json.result, "private_key"), "\n", "\\n")}"
  }
}
EOF

  gcp_monitoring_project_datasource = <<EOF
{
  "name": "${local.gcp_monitoring_project_datasource_name}",
  "type": "stackdriver",
  "access": "proxy",
  "isDefault": false,
  "readOnly": false,
  "jsonData": {
    "authenticationType": "jwt",
    "tokenUri": "https://accounts.google.com/o/oauth2/token",
    "defaultProject": "${var.gcp_monitoring_project_id}",
    "clientEmail": "${lookup(data.external.json.result, "client_email")}"
  },
  "secureJsonData": {
    "privateKey": "${replace(lookup(data.external.json.result, "private_key"), "\n", "\\n")}"
  }
}
EOF
}
