resource "aws_cloudwatch_metric_alarm" "query" {
  alarm_name          = "query-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "query-service",
  "environment": "${var.env}",
  "description": "DCP Query Service availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.query_health_check_id}"
  }
}
