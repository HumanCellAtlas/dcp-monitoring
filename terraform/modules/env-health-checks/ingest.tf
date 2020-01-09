resource "aws_route53_health_check" "ingest" {
  fqdn                    = "api.ingest.${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 80
  type                    = "HTTP"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region =  var.region

  tags = {
    Name = "ingest-health-check-${var.env}"
  }
}
