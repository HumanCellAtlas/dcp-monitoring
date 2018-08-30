locals {
  logs_domain_map = {
    dev         = "dev."
    integration = "dev."
    staging     = "dev."
    prod        = ""
  }
}

resource "aws_route53_health_check" "logs" {
  count                   = "${var.env == "dev" || var.env == "prod" ? 1 : 0}"
  fqdn                    = "logs.${lookup(local.logs_domain_map, var.env)}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/-/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "logs-health-check-${var.env}"
  }
}

resource "aws_cloudwatch_metric_alarm" "logs" {
  count               = "${var.env == "dev" || var.env == "prod" ? 1 : 0}"
  alarm_name          = "logs-${var.env}"
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
  "info": "[${var.aws_profile}:${var.env}] GET https://${aws_route53_health_check.logs.fqdn}"
}
EOF

  alarm_actions = ["${data.aws_sns_queue.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_queue.alarms.arn}"]

  dimensions {
    HealthCheckId = "${aws_route53_health_check.logs.id}"
  }
}
