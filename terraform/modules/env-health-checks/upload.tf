resource "aws_route53_health_check" "upload" {
  fqdn                    = "upload.${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "upload-health-check-${var.env}"
  }
}
