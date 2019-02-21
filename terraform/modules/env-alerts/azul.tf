resource "aws_cloudwatch_metric_alarm" "azul_indexer" {
  alarm_name          = "azul-indexer-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "data-portal-dev",
  "environment": "${var.env}",
  "description": "Azul indexer availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.azul_indexer_health_check_id}"
  }
}

resource "aws_cloudwatch_metric_alarm" "azul_webservice" {
  alarm_name          = "azul-webservice-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "data-portal-dev",
  "environment": "${var.env}",
  "description": "Azul webservice availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.azul_indexer_health_check_id}"
  }
}

resource "aws_cloudwatch_metric_alarm" "data_browser" {
  alarm_name          = "data-browser-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "HealthCheckStatus"
  threshold           = "1.0"
  namespace           = "AWS/Route53"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "data-portal-dev",
  "environment": "${var.env}",
  "description": "Data browser availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.azul_indexer_health_check_id}"
  }
}
