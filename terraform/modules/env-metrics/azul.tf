locals {
  azul_indexer_metrix_filter_prefix = "azul-indexer"
  azul_indexer_metrics_namespace = "AZUL-${upper(var.env)}"
  azul_indexer_log_group_name = "/aws/lambda/azul-indexer-${var.env}"
  azul_service_metrix_filter_prefix = "azul-service"
  azul_service_metrics_namespace = "AZUL-${upper(var.env)}"
  azul_service_log_group_name = "/aws/lambda/azul-service-${var.env}"
}

# Azul Indexer
resource "aws_cloudwatch_log_metric_filter" "http_2xx" {
  name           = "${local.azul_indexer_metrix_filter_prefix}-http-2xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=2*, ...]"
  log_group_name = "${local.azul_indexer_log_group_name}"

  metric_transformation {
    name      = "HTTP-2xx"
    namespace = "${local.azul_indexer_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_3xx" {
  name           = "${local.azul_indexer_metrix_filter_prefix}-http-3xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=3*, ...]"
  log_group_name = "${local.azul_indexer_log_group_name}"

  metric_transformation {
    name      = "HTTP-3xx"
    namespace = "${local.azul_indexer_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_4xx" {
  name           = "${local.azul_indexer_metrix_filter_prefix}-http-4xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=4*, ...]"
  log_group_name = "${local.azul_indexer_log_group_name}"

  metric_transformation {
    name      = "HTTP-4xx"
    namespace = "${local.azul_indexer_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_5xx" {
  name           = "${local.azul_indexer_metrix_filter_prefix}-http-5xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=5*, ...]"
  log_group_name = "${local.azul_indexer_log_group_name}"

  metric_transformation {
    name      = "HTTP-5xx"
    namespace = "${local.azul_indexer_metrics_namespace}"
    value     = "1"
  }
}

# Azul Web Service
resource "aws_cloudwatch_log_metric_filter" "http_2xx" {
  name           = "${local.azul_service_metrix_filter_prefix}-http-2xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=2*, ...]"
  log_group_name = "${local.azul_service_log_group_name}"

  metric_transformation {
    name      = "HTTP-2xx"
    namespace = "${local.azul_service_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_3xx" {
  name           = "${local.azul_service_metrix_filter_prefix}-http-3xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=3*, ...]"
  log_group_name = "${local.azul_service_log_group_name}"

  metric_transformation {
    name      = "HTTP-3xx"
    namespace = "${local.azul_service_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_4xx" {
  name           = "${local.azul_service_metrix_filter_prefix}-http-4xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=4*, ...]"
  log_group_name = "${local.azul_service_log_group_name}"

  metric_transformation {
    name      = "HTTP-4xx"
    namespace = "${local.azul_service_metrics_namespace}"
    value     = "1"
  }
}

resource "aws_cloudwatch_log_metric_filter" "http_5xx" {
  name           = "${local.azul_service_metrix_filter_prefix}-http-5xx"
  pattern        = "[Level=*INFO*, Timestamp, Uuid, Module=*dispatch*, RequestInfo!=\"GET /health\", StatusCode=5*, ...]"
  log_group_name = "${local.azul_service_log_group_name}"

  metric_transformation {
    name      = "HTTP-5xx"
    namespace = "${local.azul_service_metrics_namespace}"
    value     = "1"
  }
}

# NOTE: Data Browser is served from S3. The log location is currently unknown.
