locals {
  dss_metrics_namespace = "dss-${var.env}"
}

resource "aws_cloudwatch_log_metric_filter" "http_2xx" {
  name           = "dss-http-2xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /v1/swagger.json\", StatusCode=2*, ...]"
  log_group_name = "/aws/lambda/dss-${var.env}"

  metric_transformation {
    name      = "HTTP-2xx"
    namespace = "${local.dss_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_3xx" {
  name           = "dss-http-3xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /v1/swagger.json\", StatusCode=3*, ...]"
  log_group_name = "/aws/lambda/dss-${var.env}"

  metric_transformation {
    name      = "HTTP-3xx"
    namespace = "${local.dss_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_4xx" {
  name           = "dss-http-4xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /v1/swagger.json\", StatusCode=4*, ...]"
  log_group_name = "/aws/lambda/dss-${var.env}"

  metric_transformation {
    name      = "HTTP-4xx"
    namespace = "${local.dss_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_5xx" {
  name           = "dss-http-5xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /v1/swagger.json\", StatusCode=5*, ...]"
  log_group_name = "/aws/lambda/dss-${var.env}"

  metric_transformation {
    name      = "HTTP-5xx"
    namespace = "${local.dss_metrics_namespace}"
    value     = "1"
  }
}
