resource "aws_cloudwatch_metric_alarm" "dcp" {
  alarm_name          = "dcp-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "dcp-ops",
  "environment": "${var.env}"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.dcp_health_check_id}"
  }
}
