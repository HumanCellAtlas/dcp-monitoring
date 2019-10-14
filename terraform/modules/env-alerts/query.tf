resource "aws_cloudwatch_metric_alarm" "query" {
  alarm_name          = "query-${var.env}"
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
  "slack_channel": "query-service",
  "environment": "${var.env}",
  "description": "DCP Query Service availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId = "${var.query_health_check_id}"
  }
}


resource "aws_cloudwatch_metric_alarm" "query-5XX-alerts" {
  alarm_name          = "query-${var.env}-http5XX"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "5XXError"
  threshold           = "1.0"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "query-service",
  "environment": "${var.env}",
  "description": "DCP Query Service 500 errors"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    Stage = "${var.env}"
  }
}

resource "aws_cloudwatch_metric_alarm" "query-response-latency-alert" {
  alarm_name          = "query-${var.env}-high-response-latency"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "Latency"
  threshold           = "29000"
  namespace           = "AWS/ApiGateway"
  statistic           = "Maximum"
  period              = "3600"

  alarm_description = <<EOF
{
  "slack_channel": "query-service",
  "environment": "${var.env}",
  "description": "DCP Query Service response max latency above 29 seconds error"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    Stage = "${var.env}"
  }
}