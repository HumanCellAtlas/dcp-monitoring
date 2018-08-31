data "aws_caller_identity" "current" {}

data "aws_sns_topic" "alarms" {
  name = "cloudwatch-alarms"
}
