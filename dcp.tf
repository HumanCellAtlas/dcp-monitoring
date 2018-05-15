// DCP overall system health
resource "aws_route53_health_check" "dcp" {
  type                   = "CALCULATED"
  child_health_threshold = 4
  child_healthchecks     = [
    "${aws_route53_health_check.dss.id}",
    "${aws_route53_health_check.ingest.id}",
    "${aws_route53_health_check.upload.id}",
    "${aws_route53_health_check.analysis.id}"
  ]

  tags = {
    Name = "dcp-health-check"
  }
}

resource "aws_cloudwatch_metric_alarm" "dcp" {
  alarm_name          = "DCP"
  comparison_operator = "LessThanThreshold"
  evaluation_periods = "2"
  metric_name = "HealthCheckStatus"
  threshold = "1.0"
  namespace = "AWS/Route53"
  statistic = "Minimum"
  period = "120"

  alarm_actions = [
    "arn:aws:sns:${var.aws_region}:${data.aws_caller_identity.current.account_id}:cloudwatch-alarms"
  ]

  dimensions {
    HealthCheckId = "${aws_route53_health_check.dcp.id}"
  }
}
