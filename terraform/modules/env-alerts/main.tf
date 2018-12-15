data "aws_sns_topic" "alarms" {
  name = "cloudwatch-alarms"
}

data "aws_caller_identity" "current" {}
