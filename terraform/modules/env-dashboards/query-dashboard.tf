locals{
   query_dashboard = <<EOF
{
  "annotations": {
    "list": [
      {
        "$hashKey": "object:267",
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
  "iteration": 1559182763855,
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
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
      "prefix": "QUERY",
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
            "HealthCheckId": "${var.query_health_check_id}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Query Service Health",
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
        "/aws/lambda/dss-dev": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 10,
      "gridPos": {
        "h": 8,
        "w": 19,
        "x": 5,
        "y": 0
      },
      "id": 34,
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
            "LogGroup": "/aws/lambda/dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:3612",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:3662",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
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
        "5XXError": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 6,
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
            "ApiName": "dcpquery"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Count",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "dcpquery"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "4XXError",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "dcpquery"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "5XXError",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 6,
        "y": 8
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
            "ApiName": "dcpquery"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "dcpquery"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "p95.00"
          ]
        },
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "dcpquery"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
          "value": 25000,
          "yaxis": "left"
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
        "Errors_Sum": "dark-red",
        "Throttles_Sum": "yellow"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 12,
        "y": 8
      },
      "id": 27,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors_Sum",
          "yaxis": 2
        },
        {
          "alias": "Throttles_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Throttles",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "title": "APIHandler Lambda Invocations and Errors",
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "Duration_Maximum": "dark-red",
        "Errors_Sum": "dark-red",
        "Throttles_Sum": "yellow"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 18,
        "y": 8
      },
      "id": 28,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors_Sum",
          "yaxis": 2
        },
        {
          "alias": "Throttles_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Minimum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-APIHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "title": "APIHandler Lambda Invocations and Errors",
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
          "logBase": 2,
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "Errors_Sum": "dark-red",
        "Throttles_Sum": "yellow"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 0,
        "y": 16
      },
      "id": 30,
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
      "nullPointMode": "null as zero",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors_Sum",
          "yaxis": 2
        },
        {
          "alias": "Throttles_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Throttles",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "title": "AsyncQueryHandler Lambda Invocations and Errors",
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "Duration_Maximum": "dark-red",
        "Errors_Sum": "dark-red",
        "Throttles_Sum": "yellow"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 6,
        "y": 16
      },
      "id": 29,
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
      "nullPointMode": "null as zero",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors_Sum",
          "yaxis": 2
        },
        {
          "alias": "Throttles_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Minimum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-AsyncQueryHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "title": "AsyncQueryHandler Lambda Invocations and Errors",
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
          "logBase": 2,
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "Errors_Sum": "dark-red",
        "Throttles_Sum": "yellow"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 12,
        "y": 16
      },
      "id": 31,
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
      "nullPointMode": "null as zero",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors_Sum",
          "yaxis": 2
        },
        {
          "alias": "Throttles_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Throttles",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "title": "BundleEventHandler Lambda Invocations and Errors",
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "Duration_Maximum": "dark-red",
        "Errors_Sum": "dark-red",
        "Throttles_Sum": "yellow"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 18,
        "y": 16
      },
      "id": 32,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors_Sum",
          "yaxis": 2
        },
        {
          "alias": "Throttles_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Minimum"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "FunctionName": "dcpquery-${var.env}-BundleEventHandler"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
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
      "title": "BundleEventHandler Lambda Invocations and Errors",
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
          "logBase": 2,
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "dcpquery-${var.env}-async-queries": "dark-green",
        "dcpquery-${var.env}-async-queries_not_visible": "dark-green",
        "dcpquery-${var.env}-async-queries_visible": "dark-red",
        "dcpquery-${var.env}-bundle-events": "semi-dark-green",
        "dcpquery-${var.env}-bundle-events_not_visible": "dark-green",
        "dcpquery-${var.env}-bundle-events_visible": "dark-red"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 2,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 0,
        "y": 24
      },
      "id": 23,
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
      "nullPointMode": "null as zero",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{QueueName}}_visible",
          "dimensions": {
            "QueueName": "dcpquery-${var.env}-async-queries"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ApproximateNumberOfMessagesVisible",
          "namespace": "AWS/SQS",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{QueueName}}_not_visible",
          "dimensions": {
            "QueueName": "dcpquery-${var.env}-async-queries"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ApproximateNumberOfMessagesNotVisible",
          "namespace": "AWS/SQS",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Queries Queue Size (NumberOfMessagesVisible)",
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
          "format": "none",
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
        "dcpquery-${var.env}-async-queries": "dark-green",
        "dcpquery-${var.env}-async-queries_not_visible": "dark-green",
        "dcpquery-${var.env}-async-queries_visible": "dark-red",
        "dcpquery-${var.env}-bundle-events": "semi-dark-green",
        "dcpquery-${var.env}-bundle-events_not_visible": "dark-green",
        "dcpquery-${var.env}-bundle-events_visible": "dark-red"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 2,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 6,
        "y": 24
      },
      "id": 22,
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
      "nullPointMode": "null as zero",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{QueueName}}_visible",
          "dimensions": {
            "QueueName": "dcpquery-${var.env}-bundle-events"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ApproximateNumberOfMessagesVisible",
          "namespace": "AWS/SQS",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{QueueName}}_not_visible",
          "dimensions": {
            "QueueName": "dcpquery-${var.env}-bundle-events"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ApproximateNumberOfMessagesNotVisible",
          "namespace": "AWS/SQS",
          "period": "$interval",
          "refId": "D",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Bundles Queue Size (NumberOfMessagesVisible)",
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
          "format": "none",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 12,
        "y": 24
      },
      "id": 21,
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
      "nullPointMode": "null as zero",
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{QueueName}}_max",
          "dimensions": {
            "QueueName": "dcpquery-${var.env}-async-queries"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ApproximateAgeOfOldestMessage",
          "namespace": "AWS/SQS",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "{{QueueName}}_max",
          "dimensions": {
            "QueueName": "dcpquery-${var.env}-bundle-events"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ApproximateAgeOfOldestMessage",
          "namespace": "AWS/SQS",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
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
      "title": "Max Queue Message Age",
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
          "format": "s",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 18,
        "y": 24
      },
      "id": 25,
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
      "paceLength": 10,
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "BucketSizeBytes_Average",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "",
          "dimensions": {
            "BucketName": "org-humancellatlas-dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "BucketSizeBytes",
          "namespace": "AWS/S3",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "BucketName": "org-humancellatlas-dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "NumberOfObjects",
          "namespace": "AWS/S3",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "S3 Objects and Bytes",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 0,
        "y": 32
      },
      "id": 36,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {},
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "DatabaseConnections",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "RDS DatabaseConnections",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 6,
        "y": 32
      },
      "id": 37,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "DBClusterIdentifier": "dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "FreeLocalStorage",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": [
        {
          "colorMode": "critical",
          "fill": true,
          "line": true,
          "op": "lt",
          "value": 2500000000,
          "yaxis": "left"
        }
      ],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "RDS Min FreeLocalStorage",
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
          "format": "bytes",
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
        "CommitLatency_p99.00": "purple",
        "ReadLatency_p99.00": "blue"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 12,
        "y": 32
      },
      "id": 38,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "DBClusterIdentifier": "dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "WriteLatency",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "p99.00"
          ]
        },
        {
          "dimensions": {
            "DBClusterIdentifier": "dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "ReadLatency",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "p99.00"
          ]
        },
        {
          "dimensions": {
            "DBClusterIdentifier": "dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "CommitLatency",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "p99.00"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "RDS Latencies",
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "CommitLatency_p99.00": "purple",
        "ReadLatency_p99.00": "blue",
        "SwapUsage_Sum": "red"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 18,
        "y": 32
      },
      "id": 39,
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
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "SwapUsage_Sum",
          "yaxis": 2
        }
      ],
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "dimensions": {
            "DBClusterIdentifier": "dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "FreeableMemory",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "returnData": false,
          "statistics": [
            "Sum"
          ]
        },
        {
          "dimensions": {
            "DBClusterIdentifier": "dcpquery-${var.env}"
          },
          "expression": "",
          "highResolution": false,
          "id": "",
          "metricName": "SwapUsage",
          "namespace": "AWS/RDS",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
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
      "title": "RDS Cluster Memory Usage",
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
          "format": "bytes",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "format": "bytes",
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
    }
  ],
  "refresh": "1m",
  "schemaVersion": 17,
  "style": "dark",
  "tags": [],
  "templating": {
    "list": [
      {
        "auto": true,
        "auto_count": 30,
        "auto_min": "10s",
        "current": {
          "text": "auto",
          "value": "$__auto_interval_interval"
        },
        "hide": 0,
        "label": "interval",
        "name": "interval",
        "options": [
          {
            "selected": true,
            "text": "auto",
            "value": "$__auto_interval_interval"
          },
          {
            "selected": false,
            "text": "60s",
            "value": "60s"
          },
          {
            "selected": false,
            "text": "120s",
            "value": "120s"
          },
          {
            "selected": false,
            "text": "300s",
            "value": "300s"
          },
          {
            "selected": false,
            "text": "600s",
            "value": "600s"
          }
        ],
        "query": "60s,120s,300s,600s",
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
  "title": "QUERY [${upper(var.env)}]",
  "uid": "query-${var.env}",
  "version": 24
}
EOF
}