// DCP overall system health
resource "aws_route53_health_check" "dcp" {
  type                   = "CALCULATED"
  child_health_threshold = 4

  child_healthchecks = [
    "${aws_route53_health_check.dss.id}",
    "${aws_route53_health_check.ingest.id}",
    "${aws_route53_health_check.upload.id}",
    "${aws_route53_health_check.analysis.id}",
  ]

  tags = {
    Name = "dcp-health-check-${var.env}"
  }
}

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
  "info": "[${var.aws_profile}:${var.env}] Aggregate DCP component health. Check <https://console.aws.amazon.com/cloudwatch/home?region=${var.region}#alarm:alarmFilter=ANY|CloudWatch Alarms> for more info."
}
EOF

  alarm_actions = ["${data.aws_sns_queue.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_queue.alarms.arn}"]

  dimensions {
    HealthCheckId = "${aws_route53_health_check.dcp.id}"
  }
}
