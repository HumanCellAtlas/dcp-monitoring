// secondary analysis service ("Green Box")
resource "aws_route53_health_check" "analysis" {
  fqdn                    = "pipelines.${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "analysis-health-check-${var.env}"
  }
}

resource "aws_cloudwatch_metric_alarm" "analysis" {
  alarm_name          = "analysis-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_actions = [
    "arn:aws:sns:${var.region}:${data.aws_caller_identity.current.account_id}:cloudwatch-alarms",
  ]

  dimensions {
    HealthCheckId = "${aws_route53_health_check.analysis.id}"
  }
}
