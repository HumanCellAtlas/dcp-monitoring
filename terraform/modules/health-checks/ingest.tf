resource "aws_route53_health_check" "ingest" {
  fqdn                    = "api.ingest.${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 80
  type                    = "HTTP"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "ingest-health-check-${var.env}"
  }
}

resource "aws_cloudwatch_metric_alarm" "ingest" {
  alarm_name          = "ingest-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "ingestion-service",
  "info": "[${var.aws_profile}:${var.env}] GET https://${aws_route53_health_check.ingest.fqdn}"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${aws_route53_health_check.ingest.id}"
  }
}
