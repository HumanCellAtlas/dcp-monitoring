locals {
  logs_domain_map = {
    dev         = "dev."
    integration = "dev."
    staging     = "dev."
    prod        = ""
  }
}

resource "aws_route53_health_check" "logs" {
  fqdn                    = "logs.${lookup(local.logs_domain_map, var.env)}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/-/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region =  var.region

  tags = {
    Name = "logs-health-check-${var.env}"
  }
}
