locals {
  auth_dashboard = <<EOF
{
  "annotations": {
    "list": [
      {
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
  "id": 86,
  "links": [],
  "panels": [
    {
      "cacheTimeout": null,
      "colorBackground": true,
      "colorValue": false,
      "colors": [
        "#bf1b00",
        "#629e51",
        "#d44a3a"
      ],
      "datasource": "account-cloudwatch",
      "format": "none",
      "gauge": {
        "maxValue": 100,
        "minValue": 0,
        "show": false,
        "thresholdLabels": false,
        "thresholdMarkers": true
      },
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 6,
      "interval": null,
      "links": [
        {
          "type": "dashboard"
        }
      ],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$hashKey": "object:237",
          "name": "value to text",
          "value": 1
        },
        {
          "$hashKey": "object:238",
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "Auth",
      "prefixFontSize": "120%",
      "rangeMaps": [
        {
          "from": "null",
          "text": "N/A",
          "to": "null"
        }
      ],
      "sparkline": {
        "fillColor": "rgba(31, 118, 189, 0.18)",
        "full": false,
        "lineColor": "rgb(31, 120, 193)",
        "show": true
      },
      "tableColumn": "",
      "targets": [
        {
          "$hashKey": "object:125",
          "dimensions": {
            "HealthCheckId": "0d8f05fa-a108-4fe4-9868-5ddc368b3a5e"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Auth Health",
      "type": "singlestat",
      "valueFontSize": "120%",
      "valueMaps": [
        {
          "$hashKey": "object:240",
          "op": "=",
          "text": "OK",
          "value": "1"
        },
        {
          "$hashKey": "object:472",
          "op": "=",
          "text": "ERR",
          "value": "0"
        }
      ],
      "valueName": "current"
    },
    {
      "aliasColors": {
        "4XXError": "#ef843c",
        "5XXError": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "account-cloudwatch",
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 8
      },
      "id": 10,
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
      "paceLength": 10,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "4XXError",
          "fill": 0,
          "linewidth": 2,
          "yaxis": 2
        },
        {
          "alias": "5XXError",
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
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "fusillade",
            "Stage": "${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Count",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "fusillade",
            "Stage": "${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "4XXError",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "B",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "fusillade",
            "Stage": "${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "5XXError",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "C",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "ApiGateway Metrics [Rate]",
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
        "/aws/lambda/fusillade-${var.env}": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "account-cloudwatch",
      "fill": 10,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 8
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
      "linewidth": 0,
      "links": [],
      "nullPointMode": "null as zero",
      "paceLength": 10,
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
          "$hashKey": "object:3520",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/fusillade-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Auth (Fusillade) Errors in Airbrake",
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
          "$hashKey": "object:3764",
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "$hashKey": "object:3765",
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
      "aliasColors": {
        "4XXError": "#ef843c",
        "5XXError": "#bf1b00",
        "Maximum": "#bf1b00",
        "Minimum": "#508642",
        "p50.00": "#629e51",
        "p99.00": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "account-cloudwatch",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 16
      },
      "id": 12,
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
      "nullPointMode": "null",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "4XXError",
          "linewidth": 2,
          "yaxis": 2
        },
        {
          "alias": "5XXError",
          "linewidth": 2,
          "yaxis": 1
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "fusillade",
            "Stage": "${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "fusillade",
            "Stage": "${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "B",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "p95.00"
          ]
        },
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "fusillade",
            "Stage": "${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "C",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "p50.00"
          ]
        }
      ],
      "thresholds": [
        {
          "colorMode": "critical",
          "fill": true,
          "line": true,
          "op": "gt",
          "value": 5000
        }
      ],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "ApiGateway Latencies",
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
          "format": "ms",
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
        "Average": "blue",
        "Errors": "#890f02",
        "Errors_Sum": "#890f02",
        "Maximum": "dark-red",
        "P99": "green"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "account-cloudwatch",
      "description": "The latency of the endpoint \"POST /v1/policies/evaluate\" measured from AWS API Gateway",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 16
      },
      "hideTimeOverride": false,
      "id": 18,
      "legend": {
        "alignAsTable": false,
        "avg": false,
        "current": false,
        "hideEmpty": false,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Duration_Sum",
          "yaxis": 2
        },
        {
          "alias": "Duration",
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "Maximum",
          "dimensions": {
            "ApiName": "fusillade",
            "Method": "POST",
            "Resource": "/v1/policies/evaluate",
            "Stage": "${var.env}"
          },
          "expression": "",
          "hide": false,
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "B",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "P99",
          "dimensions": {
            "ApiName": "fusillade",
            "Method": "POST",
            "Resource": "/v1/policies/evaluate",
            "Stage": "${var.env}"
          },
          "expression": "",
          "hide": false,
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "C",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "p99"
          ]
        }
      ],
      "thresholds": [
        {
          "colorMode": "critical",
          "fill": true,
          "line": true,
          "op": "gt",
          "value": 500,
          "yaxis": "left"
        }
      ],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Authorization Evaluation Latency",
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
          "format": "ms",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "ms",
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
        "Errors": "#ef843c",
        "Errors_Sum": "#890f02",
        "Invocations": "#e5ac0e"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "account-cloudwatch",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 24
      },
      "id": 14,
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Duration_Sum",
          "yaxis": 2
        },
        {
          "alias": "Duration",
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "Average",
          "dimensions": {
            "FunctionName": "fusillade-${var.env}"
          },
          "expression": "",
          "hide": false,
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Maximum",
          "dimensions": {
            "FunctionName": "fusillade-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "API Lambda Duration",
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
          "format": "ms",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": null,
          "show": true
        },
        {
          "format": "ms",
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
        "Errors": "#890f02",
        "Errors_Sum": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "account-cloudwatch",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 24
      },
      "id": 16,
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Duration_Sum",
          "yaxis": 2
        },
        {
          "alias": "Duration",
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "Invocations",
          "dimensions": {
            "FunctionName": "fusillade-${var.env}"
          },
          "expression": "",
          "hide": false,
          "highResolution": false,
          "id": "",
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors",
          "dimensions": {
            "FunctionName": "fusillade-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
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
      "timeRegions": [],
      "timeShift": null,
      "title": "API Lambda Counts",
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
          "format": "ms",
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
    }
  ],
  "schemaVersion": 17,
  "style": "dark",
  "tags": [],
  "templating": {
    "list": []
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
  "title": "Auth [${upper(var.env)}]",
  "uid": "auth-${var.env}",
  "version": 4
}
EOF
}
