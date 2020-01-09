resource "aws_route53_health_check" "metadata-schema" {
  fqdn                    = "schema.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region =  var.region

  tags = {
    Name = "metadata-schema-health-check-${var.env}"
  }
}
