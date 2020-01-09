resource "aws_cloudwatch_metric_alarm" "dss" {
  alarm_name          = "dss-${var.env}"
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
  "slack_channel": "data-store-eng",
  "environment": "${var.env}",
  "description": "DCP Data Storage Service availability healthcheck"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    HealthCheckId =  var.dss_health_check_id
  }
}

resource "aws_cloudwatch_metric_alarm" "dss_es_jvm_memory_pressure" {
  alarm_name          = "dss-es-jvm-memory-pressure-${var.env}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "JVMMemoryPressure"
  threshold           = "85"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "data-store-eng",
  "environment": "${var.env}",
  "description": "Elasticsearch JVM memory pressure is high!"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    DomainName = "dss-index-${var.env}"
    ClientId   =  data.aws_caller_identity.current.account_id
  }
}

resource "aws_cloudwatch_metric_alarm" "dss_es_storage_space" {
  alarm_name          = "dss-es-storage-space-${var.env}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "3"
  datapoints_to_alarm = "2"
  metric_name         = "FreeStorageSpace"
  threshold           = "5000"
  namespace           = "AWS/ES"
  statistic           = "Minimum"
  period              = "120"

  alarm_description = <<EOF
{
  "slack_channel": "data-store-eng",
  "environment": "${var.env}",
  "description": "Elasticsearch shard storage is low!"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    DomainName = "dss-index-${var.env}"
    ClientId   =  data.aws_caller_identity.current.account_id
  }
}

resource "aws_cloudwatch_metric_alarm" "dss-sync-failure" {
  count =  contains(list("staging", "prod"), var.env)? 1: 0 
  alarm_name          = "dss-sync-alert-${var.env}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "ExecutionsFailed"
  namespace           = "AWS/States"
  period              = "120"
  statistic           = "Maximum"
  threshold           = "1"

  alarm_description = <<EOF
{
  "slack_channel": "data-store-eng",
  "environment": "${var.env}",
  "description": "Sync Step-Function Failure!"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]

  dimensions {
    # "Terraform does not support ARN lookup for AWS Step Functions"
    StateMachineArn = "arn:aws:states:${var.region}:${data.aws_caller_identity.current.account_id}:stateMachine:dss-sync-sfn-${var.env}"
  }
}
