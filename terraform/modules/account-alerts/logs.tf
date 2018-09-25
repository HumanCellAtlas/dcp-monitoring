resource "aws_cloudwatch_metric_alarm" "logs_health" {
  alarm_name          = "logs-health-${var.aws_profile}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "dcp-security",
  "description": "Logs Proxy and Elasticsearch availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.logs_health_check_id}"
  }
}

resource "aws_cloudwatch_metric_alarm" "logs_free_space" {
  alarm_name          = "logs-free-space-${var.aws_profile}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "FreeStorageSpace"
  threshold           = "10000.0"
  namespace           = "AWS/ES"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "dcp-security",
  "description": "Logs Elasticsearch cluster free space"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    DomainName = "hca-logs"
    ClientId   = "${data.aws_caller_identity.current.account_id}"
  }
}
