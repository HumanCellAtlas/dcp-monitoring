resource "aws_cloudwatch_metric_alarm" "metadata_schema" {
  alarm_name          = "metadata-schema-health-${var.aws_profile}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "hca-metadata",
  "description": "Metadata schema availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId =  var.metadata_schema_health_check_id
  }
}
