resource "aws_cloudwatch_metric_alarm" "rds_low_disk" {
  alarm_name          = "rds-low-disk-${var.aws_profile}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  threshold           = "2000000000"
  namespace           = "AWS/RDS"
  metric_name         = "FreeStorageSpace"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "dcp-ops-alerts",
  "description": "AWS Relational Database Service node low on disk"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions = ["${data.aws_sns_topic.alarms.arn}"]
}

resource "aws_cloudwatch_metric_alarm" "rds_cpu_high" {
  alarm_name = "rds-cpu-high-${var.aws_profile}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods = "60"
  threshold = "80"
  namespace = "AWS/RDS"
  metric_name = "CPUUtilization"
  statistic = "Minimum"
  period = "60"

  alarm_description = <<EOF
{
  "slack_channel": "dcp-ops-alerts",
  "description": "AWS Relational Database Service node CPU utilization high"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]
}
