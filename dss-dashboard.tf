output "dss_dashboard_json" {
  value = <<EOF
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
      "datasource": "Cloudwatch",
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
        "w": 5,
        "x": 0,
        "y": 0
      },
      "id": 11,
      "interval": null,
      "links": [],
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
      "prefix": "DSS",
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
            "HealthCheckId": "${aws_route53_health_check.dcp.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "DSS Health",
      "transparent": false,
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
        "3xx": "#3f2b5b",
        "4xx": "#ef843c",
        "5xx": "#bf1b00",
        "By Type_Sum": "#bf1b00",
        "HTTP-2xx": "#7eb26d",
        "HTTP-3xx": "#5195ce",
        "HTTP-4xx": "#f2c96d",
        "HTTP-5xx": "#bf1b00",
        "errors": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "description": "Rates of HTTP status codes on the DSS API not including health checks",
      "fill": 6,
      "gridPos": {
        "h": 8,
        "w": 19,
        "x": 5,
        "y": 0
      },
      "id": 2,
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
          "$hashKey": "object:1027",
          "alias": "HTTP-5xx",
          "yaxis": 2
        },
        {
          "$hashKey": "object:1060",
          "alias": "HTTP-5xx",
          "linewidth": 3
        }
      ],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-5xx",
          "namespace": "DSS",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-4xx",
          "namespace": "DSS",
          "period": "",
          "refId": "B",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-3xx",
          "namespace": "DSS",
          "period": "",
          "refId": "C",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-2xx",
          "namespace": "DSS",
          "period": "",
          "refId": "D",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "DSS API HTTP Status Classes [Rate]",
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
      ]
    },
    {
      "aliasColors": {
        "/aws/lambda/dss-${var.deployment_stage}": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "fill": 10,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
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
          "$$hashKey": "object:3520",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$$hashKey": "object:3612",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-index-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "B",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$$hashKey": "object:3662",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-gs-copy-sfn-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "C",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$$hashKey": "object:3711",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-gs-copy-write-metadata-sfn-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "D",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$$hashKey": "object:4026",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-notify-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "E",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$$hashKey": "object:4075",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-sfn-launcher-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "F",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$$hashKey": "object:4124",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-sync-${var.deployment_stage}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "G",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "DSS Errors in Airbrake",
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
          "$$hashKey": "object:3764",
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "$$hashKey": "object:3765",
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        }
      ]
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
      "datasource": "Cloudwatch",
      "description": "Rates of invocation, errors, and throttles in our AWS account",
      "fill": 4,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 8
      },
      "id": 4,
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
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.aws_region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "Throttles",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "C",
          "region": "${var.aws_region}",
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
      ]
    },
    {
      "aliasColors": {
        "dss-index-${var.deployment_stage}": "#447ebc"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 0,
        "y": 16
      },
      "id": 9,
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
      "linewidth": 3,
      "links": [],
      "nullPointMode": "null",
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
          "alias": "{{DomainName}}",
          "dimensions": {
            "ClientId": "861229788715",
            "DomainName": "dss-index-${var.deployment_stage}"
          },
          "metricName": "SearchableDocuments",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "ES Documents Stored",
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
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        }
      ]
    },
    {
      "aliasColors": {
        "dss-index-${var.deployment_stage}": "#447ebc"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 8,
        "y": 16
      },
      "id": 6,
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
      "linewidth": 3,
      "links": [],
      "nullPointMode": "null",
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
          "alias": "{{DomainName}}",
          "dimensions": {
            "ClientId": "861229788715",
            "DomainName": "dss-index-${var.deployment_stage}"
          },
          "metricName": "FreeStorageSpace",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [
        {
          "colorMode": "critical",
          "fill": true,
          "line": true,
          "op": "lt",
          "value": 5000
        }
      ],
      "timeFrom": null,
      "timeShift": null,
      "title": "ES Storage Space",
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
          "min": "0",
          "show": true
        },
        {
          "format": "short",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        }
      ]
    },
    {
      "aliasColors": {
        "JVMMemoryPressure_Average": "#ef843c"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 16,
        "y": 16
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
      "linewidth": 3,
      "links": [],
      "nullPointMode": "null",
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
            "ClientId": "861229788715",
            "DomainName": "dss-index-${var.deployment_stage}"
          },
          "metricName": "JVMMemoryPressure",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.aws_region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [
        {
          "colorMode": "critical",
          "fill": true,
          "line": true,
          "op": "gt",
          "value": 85
        }
      ],
      "timeFrom": null,
      "timeShift": null,
      "title": "ES JVM Memory Pressure",
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
          "max": "100",
          "min": "0",
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
      ]
    }
  ],
  "schemaVersion": 16,
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
  "title": "DSS [${upper(var.deployment_stage)}]",
  "uid": "AgBS30Gmk",
  "version": 3
}
EOF
}
