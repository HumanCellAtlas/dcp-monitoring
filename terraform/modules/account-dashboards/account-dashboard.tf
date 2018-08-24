output "account_dashboard" {
  value = <<EOF
{
  "annotations": {
    "list": [
      {
        "$hashKey": "object:2329",
        "builtIn": 1,
        "datasource": "-- Grafana --",
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "type": "dashboard"
      }
    ]
  },
  "editable": true,
  "gnetId": null,
  "graphTooltip": 0,
  "iteration": 1535173051094,
  "links": [],
  "panels": [
    {
      "aliasColors": {
        "By Type_Sum": "#bf1b00",
        "errors": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "description": "Graph metrics at the following address to drill down: https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#metricsV2:graph=~(view~'timeSeries~stacked~false~region~'us-east-1~start~'-PT1H~end~'P0D);search=errors;namespace=Logs;dimensions=CountType,LogGroup",
      "fill": 4,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 0
      },
      "id": 8,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 2,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:137",
          "alias": "errors",
          "dimensions": {
            "CountType": "errors"
          },
          "highResolution": false,
          "metricName": "By Type",
          "namespace": "Logs",
          "period": "$interval",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Exceptions in Logs [Rate]",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 2,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 0
      },
      "id": 11,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 2,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "Currency": "USD"
          },
          "highResolution": false,
          "metricName": "EstimatedCharges",
          "namespace": "AWS/Billing",
          "period": "$interval",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": "30d",
      "timeShift": null,
      "title": "Spend [Sum per Month]",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "FailedInvocations_Sum": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "description": "Events meant to trigger processes in the system",
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 8
      },
      "id": 15,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 0,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "$hashKey": "object:1963",
          "alias": "FailedInvocations_Sum",
          "fill": 0,
          "linewidth": 2,
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:1866",
          "alias": "",
          "dimensions": {},
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Invocations",
          "namespace": "AWS/Events",
          "period": "$interval",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:1917",
          "alias": "",
          "dimensions": {},
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "FailedInvocations",
          "namespace": "AWS/Events",
          "period": "$interval",
          "refId": "B",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "CloudWatch Events",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "3xx": "#3f2b5b",
        "4xx": "#ef843c",
        "5xx": "#bf1b00",
        "By Type_Sum": "#bf1b00",
        "Errors": "#bf1b00",
        "HTTP-2xx": "#7eb26d",
        "HTTP-3xx": "#5195ce",
        "HTTP-4xx": "#f2c96d",
        "HTTP-5xx": "#bf1b00",
        "Throttles": "#eab839",
        "errors": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "description": "Rates of invocation, errors, and throttles in our AWS account",
      "fill": 4,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 8
      },
      "id": 13,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 0,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Throttles",
          "fill": 3,
          "linewidth": 3,
          "yaxis": 2
        },
        {
          "alias": "Errors",
          "fill": 0,
          "linewidth": 3,
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Throttles",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Lambda Metrics [Rate]",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "$hashKey": "object:662",
          "format": "short",
          "label": "",
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "$hashKey": "object:663",
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {},
      "bars": true,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 9,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 16
      },
      "id": 17,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": false,
      "linewidth": 0,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:2046",
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "AuthorizationFailureCount",
          "namespace": "CloudTrailMetrics",
          "period": "$interval",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:2230",
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "ConsoleSignInFailureCount",
          "namespace": "CloudTrailMetrics",
          "period": "$interval",
          "refId": "B",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:2252",
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "IAMPolicyEventCount",
          "namespace": "CloudTrailMetrics",
          "period": "$interval",
          "refId": "C",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:2274",
          "alias": "{{metric}}",
          "dimensions": {},
          "highResolution": false,
          "metricName": "SecurityGroupEventCount",
          "namespace": "CloudTrailMetrics",
          "period": "$interval",
          "refId": "D",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "CloudTrail Security Events [Rate]",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "status!=ok": "#bf1b00",
        "status=not_ok": "#bf1b00",
        "sum(status=not_ok)": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.gcp_monitoring_project_datasource_name}",
      "fill": 7,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 16
      },
      "id": 20,
      "legend": {
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 0,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "$hashKey": "object:816",
          "alias": "status=ok",
          "yaxis": 2
        },
        {
          "$hashKey": "object:817",
          "alias": "status!=ok",
          "fill": 0,
          "linewidth": 2,
          "yaxis": 2
        },
        {
          "alias": "project=human-cell-atlas-travis-test, status=timeout",
          "yaxis": 1
        },
        {
          "alias": "sum(status=not_ok)",
          "yaxis": 2
        },
        {
          "alias": "status!=ok",
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:160",
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [
              "metric.labels.status",
              "resource.labels.project_id"
            ],
            "perSeriesAligner": "ALIGN_RATE"
          },
          "alias": "project={{resource.labels.project_id}}, status={{metric.labels.status}}",
          "filter": "",
          "format": "time_series",
          "metricType": "cloudfunctions.googleapis.com/function/execution_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        },
        {
          "$hashKey": "object:697",
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [
              "metric.labels.status"
            ],
            "perSeriesAligner": "ALIGN_RATE"
          },
          "alias": "status!=ok",
          "filter": "metric.labels.status!=\"ok\"",
          "format": "time_series",
          "metricType": "cloudfunctions.googleapis.com/function/execution_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "C",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "GCP CloudFunction [Rate-$interval]",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "type": "graph",
      "xaxis": {
        "buckets": null,
        "mode": "time",
        "name": null,
        "show": true,
        "values": []
      },
      "yaxes": [
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        }
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "cards": {
        "cardPadding": 0,
        "cardRound": null
      },
      "color": {
        "cardColor": "#7eb26d",
        "colorScale": "sqrt",
        "colorScheme": "interpolateSpectral",
        "exponent": 0.25,
        "mode": "spectrum"
      },
      "dataFormat": "tsbuckets",
      "datasource": "${local.gcp_monitoring_project_datasource_name}",
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 24
      },
      "heatmap": {},
      "highlightCards": true,
      "id": 22,
      "legend": {
        "show": true
      },
      "links": [],
      "targets": [
        {
          "$hashKey": "object:242",
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_DELTA"
          },
          "alias": "{{bucket}}",
          "filter": "",
          "format": "time_series",
          "metricType": "cloudfunctions.googleapis.com/function/execution_times",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "title": "GCP CloudFunction Execution Times [Distribution-10m]",
      "tooltip": {
        "show": true,
        "showHistogram": false
      },
      "type": "heatmap",
      "xAxis": {
        "show": true
      },
      "xBucketNumber": null,
      "xBucketSize": null,
      "yAxis": {
        "decimals": 1,
        "format": "ns",
        "logBase": 1,
        "max": null,
        "min": "0",
        "show": true,
        "splitFactor": null
      },
      "yBucketBound": "auto",
      "yBucketNumber": null,
      "yBucketSize": null
    },
    {
      "cards": {
        "cardPadding": 0,
        "cardRound": null
      },
      "color": {
        "cardColor": "#7eb26d",
        "colorScale": "sqrt",
        "colorScheme": "interpolateSpectral",
        "exponent": 0.25,
        "mode": "spectrum"
      },
      "dataFormat": "tsbuckets",
      "datasource": "${local.gcp_monitoring_project_datasource_name}",
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 24
      },
      "heatmap": {},
      "highlightCards": true,
      "id": 23,
      "legend": {
        "show": true
      },
      "links": [],
      "targets": [
        {
          "$hashKey": "object:242",
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_DELTA"
          },
          "alias": "{{bucket}}",
          "filter": "",
          "format": "time_series",
          "metricType": "cloudfunctions.googleapis.com/function/user_memory_bytes",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "title": "GCP CloudFunction Memory Usage [Distribution-10m]",
      "tooltip": {
        "show": true,
        "showHistogram": false
      },
      "type": "heatmap",
      "xAxis": {
        "show": true
      },
      "xBucketNumber": null,
      "xBucketSize": null,
      "yAxis": {
        "decimals": 1,
        "format": "bytes",
        "logBase": 1,
        "max": null,
        "min": "0",
        "show": true,
        "splitFactor": null
      },
      "yBucketBound": "auto",
      "yBucketNumber": null,
      "yBucketSize": null
    }
  ],
  "refresh": "1m",
  "schemaVersion": 16,
  "style": "dark",
  "tags": [],
  "templating": {
    "list": [
      {
        "auto": false,
        "auto_count": 30,
        "auto_min": "10s",
        "current": {
          "text": "300s",
          "value": "300s"
        },
        "hide": 0,
        "label": "interval",
        "name": "interval",
        "options": [
          {
            "selected": false,
            "text": "60s",
            "value": "60s"
          },
          {
            "selected": true,
            "text": "300s",
            "value": "300s"
          },
          {
            "selected": false,
            "text": "1800s",
            "value": "1800s"
          },
          {
            "selected": false,
            "text": "auto",
            "value": "auto"
          }
        ],
        "query": "60s,300s,1800s,auto",
        "refresh": 2,
        "skipUrlSync": false,
        "type": "interval"
      }
    ]
  },
  "time": {
    "from": "now-6h",
    "to": "now"
  },
  "timepicker": {
    "refresh_intervals": [
      "5s",
      "10s",
      "30s",
      "1m",
      "5m",
      "15m",
      "30m",
      "1h",
      "2h",
      "1d"
    ],
    "time_options": [
      "5m",
      "15m",
      "1h",
      "6h",
      "12h",
      "24h",
      "2d",
      "7d",
      "30d"
    ]
  },
  "timezone": "",
  "title": "Account Status [${upper(var.aws_profile)}]",
  "uid": "account-${var.env}",
  "version": 36
}
EOF
}
