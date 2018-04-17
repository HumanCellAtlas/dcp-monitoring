resource "aws_route53_health_check" "ingest" {
  fqdn              = "api.ingest.${(var.deployment_stage == "prod") ? "" : "${var.deployment_stage}."}data.humancellatlas.org"
  port              = 80
  type              = "HTTP"
  resource_path     = "/health"
  failure_threshold = "3"
  request_interval  = "30"
  cloudwatch_alarm_region = "${var.aws_region}"

  tags = {
    Name = "ingest-health-check"
  }
}

resource "aws_cloudwatch_metric_alarm" "ingest" {
  alarm_name          = "INGEST"
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
    HealthCheckId = "${aws_route53_health_check.ingest.id}"
  }
}

