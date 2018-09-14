locals {
  metrics_domain_map = {
    dev         = "dev."
    integration = "dev."
    staging     = "dev."
    prod        = ""
  }
}

resource "aws_route53_health_check" "metrics" {
  fqdn                    = "metrics.${lookup(local.metrics_domain_map, var.env)}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/api/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "metrics-health-check-${var.env}"
  }
}
