resource "aws_route53_health_check" "query" {
  fqdn                    = "query.${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/internal/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region =  var.region

  tags = {
    Name = "query-health-check-${var.env}"
  }
}
