resource "aws_route53_health_check" "dss" {
  fqdn                    = "dss.${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/internal/application_secrets"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "dss-health-check-${var.env}"
  }
}
