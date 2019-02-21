# NOTE: This does not cover the individual development environment.
resource "aws_route53_health_check" "azul_indexer" {
  fqdn                    = "indexer.${(var.env == "prod") ? "" : "${var.env}."}explore.data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "azul-indexer-health-check-${var.env}"
  }
}

resource "aws_route53_health_check" "azul_webservice" {
  fqdn                    = "service.${(var.env == "prod") ? "" : "${var.env}."}explore.data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/health"
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "azul-webservice-health-check-${var.env}"
  }
}

resource "aws_route53_health_check" "data_browser" {
  fqdn                    = "${(var.env == "prod") ? "" : "${var.env}."}data.humancellatlas.org"
  port                    = 443
  type                    = "HTTPS"
  resource_path           = "/health/"                                                           # All requests to "/health" on the data browser will be redirected to "/health/".
  failure_threshold       = "3"
  request_interval        = "30"
  cloudwatch_alarm_region = "${var.region}"

  tags = {
    Name = "data-browser-health-check-${var.env}"
  }
}
