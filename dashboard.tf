// health dashboard
resource "aws_cloudwatch_dashboard" "system_health" {
  dashboard_name = "system-health"
  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 12,
      "y": 0,
      "width": 3,
      "height": 3,
      "styles": "undefined",
      "properties": {
        "title": "DSS",
        "annotations": {
          "alarms": [
            "arn:aws:cloudwatch:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alarm:DSS"
          ]
        },
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 15,
      "y": 0,
      "width": 9,
      "height": 3,
      "styles": "undefined",
      "properties": {
        "title": "DSS",
        "annotations": {
          "alarms": [
            "arn:aws:cloudwatch:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alarm:DSS"
          ]
        },
        "view": "timeSeries",
        "stacked": false
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 3,
      "height": 3,
      "styles": "undefined",
      "properties": {
        "title": "DCP",
        "annotations": {
          "alarms": [
            "arn:aws:cloudwatch:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alarm:DCP"
          ]
        },
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 3,
      "y": 0,
      "width": 9,
      "height": 3,
      "styles": "undefined",
      "properties": {
        "title": "DCP",
        "annotations": {
          "alarms": [
            "arn:aws:cloudwatch:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alarm:DCP"
          ]
        },
        "view": "timeSeries",
        "stacked": false
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 3,
      "width": 3,
      "height": 3,
      "styles": "undefined",
      "properties": {
        "title": "LOGS",
        "annotations": {
          "alarms": [
            "arn:aws:cloudwatch:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alarm:LOGS"
          ]
        },
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 3,
      "y": 3,
      "width": 9,
      "height": 3,
      "styles": "undefined",
      "properties": {
        "title": "LOGS",
        "annotations": {
          "alarms": [
            "arn:aws:cloudwatch:${var.aws_region}:${data.aws_caller_identity.current.account_id}:alarm:LOGS"
          ]
        },
        "view": "timeSeries",
        "stacked": false
      }
    }
  ]
}
EOF
}

