locals {
  matrix_dashboard = <<EOF
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
  "iteration": 1547148328805,
  "links": [],
  "panels": [
    {
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
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
        "h": 3,
        "w": 4,
        "x": 0,
        "y": 0
      },
      "id": 40,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
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
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "alias": "",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Matrix Request",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "3600",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": "",
      "title": "Requests",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
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
        "h": 3,
        "w": 4,
        "x": 4,
        "y": 0
      },
      "id": 41,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
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
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "alias": "",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Matrix Cache Hit",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "3600",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": "",
      "title": "Cache Hit",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
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
        "h": 3,
        "w": 4,
        "x": 8,
        "y": 0
      },
      "id": 42,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
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
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "alias": "",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Matrix Cache Miss",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "3600",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": "",
      "title": "Cache Miss",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
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
        "h": 3,
        "w": 4,
        "x": 12,
        "y": 0
      },
      "id": 43,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
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
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "alias": "",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Matrix Conversion Request",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "3600",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": "",
      "title": "Conversion Request",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
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
        "h": 3,
        "w": 4,
        "x": 16,
        "y": 0
      },
      "id": 44,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
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
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "alias": "",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Matrix Conversion Completion",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "3600",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": "",
      "title": "Conversion Completion",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
    {
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
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
        "h": 3,
        "w": 4,
        "x": 20,
        "y": 0
      },
      "id": 45,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "name": "value to text",
          "value": 1
        },
        {
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "",
      "prefixFontSize": "50%",
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
        "show": false
      },
      "tableColumn": "",
      "targets": [
        {
          "alias": "",
          "dimensions": {},
          "highResolution": false,
          "metricName": "Matrix Request Completion",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "3600",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": "",
      "title": "Request Completion",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "avg"
    },
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
        "y": 3
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
      "prefix": "MATRIX",
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
            "HealthCheckId": "${var.matrix_health_check_id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Matrix Health",
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
        "/aws/lambda/matrix-service-api-${var.env}": "#bf1b00"
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
        "y": 3
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
          "$hashKey": "object:3520",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/matrix-service-api-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:3520",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dcp-matrix-service-driver-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:3612",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dcp-matrix-service-mapper-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:3662",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dcp-matrix-service-reducer-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:3711",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dcp-matrix-service-worker-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Matrix Errors in Airbrake",
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
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 6,
        "x": 0,
        "y": 11
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
      "linewidth": 1,
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
          "alias": "Cache Table Read Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-cache-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Cache Table Write Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-cache-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Cache Table Read Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-cache-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Cache Table Write Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-cache-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Cache Table Usage (DynamoDB)",
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
        "h": 9,
        "w": 6,
        "x": 6,
        "y": 11
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
      "linewidth": 1,
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
          "alias": "Lock Table Read Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-lock-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Lock Table Write Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-lock-table-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Lock Table Read Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-lock-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Lock Table Write Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-lock-table-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Lock Table Usage (DynamoDB)",
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
        "h": 9,
        "w": 6,
        "x": 12,
        "y": 11
      },
      "id": 18,
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
          "alias": "Output Table Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-output-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Output Table Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-output-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Output Table Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-output-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Output Table Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-output-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Output Table Usage (DynamoDB)",
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
        "h": 9,
        "w": 6,
        "x": 18,
        "y": 11
      },
      "id": 19,
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
          "alias": "State Table Read Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-state-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "Stable Table Write Max (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-state-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "State Table Read Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-state-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Stable Table Write Avg (capacity units)",
          "dimensions": {
            "TableName": "dcp-matrix-service-state-table-${var.env}"
          },
          "highResolution": false,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "State Table Usage (DynamoDB)",
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
        "h": 9,
        "w": 12,
        "x": 0,
        "y": 20
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "5XX Errors",
          "yaxis": 2
        },
        {
          "alias": "4XX Errors",
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "Count",
          "dimensions": {
            "ApiName": "matrix-service-api",
            "Stage": "${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Count",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "4XX Errors",
          "dimensions": {
            "ApiName": "matrix-service-api",
            "Stage": "${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "4XXError",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "5XX Errors",
          "dimensions": {
            "ApiName": "matrix-service-api",
            "Stage": "${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "5XXError",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Api Gateway Stats [Rate]",
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
        "h": 9,
        "w": 12,
        "x": 12,
        "y": 20
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
      "linewidth": 1,
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
          "alias": "Total Latency Avg",
          "dimensions": {
            "ApiName": "matrix-service-api",
            "Stage": "${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Total Latency Max",
          "dimensions": {
            "ApiName": "matrix-service-api",
            "Stage": "${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Api Gateway Total Latency",
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
        "Errors": "#890f02",
        "Errors_Sum": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 0,
        "y": 29
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
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
            "FunctionName": "matrix-service-api-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors",
          "dimensions": {
            "FunctionName": "matrix-service-api-${var.env}"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
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
    },
    {
      "aliasColors": {
        "Errors": "#890f02",
        "Errors_Sum": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 5,
        "y": 29
      },
      "id": 26,
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
            "FunctionName": "dcp-matrix-service-driver-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-driver-${var.env}"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Driver Lambda Counts",
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
    },
    {
      "aliasColors": {
        "Errors": "#890f02",
        "Errors_Sum": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 10,
        "y": 29
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
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
            "FunctionName": "dcp-matrix-service-mapper-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-mapper-${var.env}"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Mapper Lambda Counts",
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
    },
    {
      "aliasColors": {
        "Errors": "#890f02",
        "Errors_Sum": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 15,
        "y": 29
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
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
            "FunctionName": "dcp-matrix-service-worker-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-worker-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Worker Lambda Counts",
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
    },
    {
      "aliasColors": {
        "Errors": "#890f02",
        "Errors_Sum": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 20,
        "y": 29
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
      "nullPointMode": "null",
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
            "FunctionName": "dcp-matrix-service-reducer-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-reducer-${var.env}"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Reducer Lambda Counts",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 0,
        "y": 38
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
      "nullPointMode": "null",
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
            "FunctionName": "matrix-service-api-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Maximum",
          "dimensions": {
            "FunctionName": "matrix-service-api-${var.env}"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
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
        "Errors": "#ef843c",
        "Errors_Sum": "#890f02",
        "Invocations": "#e5ac0e"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 5,
        "y": 38
      },
      "id": 35,
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
            "FunctionName": "dcp-matrix-service-driver-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Maximum",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-driver-${var.env}"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Driver Lambda Duration",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 10,
        "y": 38
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
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
            "FunctionName": "dcp-matrix-service-mapper-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Maximum",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-mapper-${var.env}"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Mapper Lambda Duration",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 15,
        "y": 38
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
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
            "FunctionName": "dcp-matrix-service-worker-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Maximum",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-worker-${var.env}"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Worker Lambda Duration",
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 20,
        "y": 38
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
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
            "FunctionName": "dcp-matrix-service-reducer-${var.env}"
          },
          "hide": false,
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Maximum",
          "dimensions": {
            "FunctionName": "dcp-matrix-service-reducer-${var.env}"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Reducer Lambda Duration",
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
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "description": "loom, csv, mtx",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 0,
        "y": 47
      },
      "id": 51,
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
      "percentage": false,
      "pointradius": 3,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "0-499 bundles",
          "dimensions": {
            "Number of Bundles": "0-499"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "500-999 bundles",
          "dimensions": {
            "Number of Bundles": "500-999"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1000-1499 bundles",
          "dimensions": {
            "Number of Bundles": "1000-1499"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1500-1999 bundles ",
          "dimensions": {
            "Number of Bundles": "1500-1999"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "2000-2499 bundles",
          "dimensions": {
            "Number of Bundles": "2000-2499"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "E",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Average Request Duration",
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
          "decimals": null,
          "format": "s",
          "label": "",
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
      "description": "",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 5,
        "y": 47
      },
      "id": 50,
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
      "percentage": false,
      "pointradius": 3,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "0-499 bundles",
          "dimensions": {
            "Number of Bundles": "0-499",
            "Output Format": "zarr"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "500-999 bundles",
          "dimensions": {
            "Number of Bundles": "500-999",
            "Output Format": "zarr"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1000-1499 bundles",
          "dimensions": {
            "Number of Bundles": "1000-1499",
            "Output Format": "zarr"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1500-1999 bundles ",
          "dimensions": {
            "Number of Bundles": "1500-1999",
            "Output Format": "zarr"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "2000-2499 bundles",
          "dimensions": {
            "Number of Bundles": "2000-2499",
            "Output Format": "zarr"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "E",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Zarr Request Duration",
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
          "decimals": null,
          "format": "s",
          "label": "",
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
      "description": "",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 10,
        "y": 47
      },
      "id": 48,
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
      "percentage": false,
      "pointradius": 3,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "0-499 bundles",
          "dimensions": {
            "Number of Bundles": "0-499",
            "Output Format": "loom"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "500-999 bundles",
          "dimensions": {
            "Number of Bundles": "500-999",
            "Output Format": "loom"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1000-1499 bundles",
          "dimensions": {
            "Number of Bundles": "1000-1499",
            "Output Format": "loom"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1500-1999 bundles ",
          "dimensions": {
            "Number of Bundles": "1500-1999",
            "Output Format": "loom"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "2000-2499 bundles",
          "dimensions": {
            "Number of Bundles": "2000-2499",
            "Output Format": "loom"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "E",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Loom Request Duration",
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
          "decimals": null,
          "format": "s",
          "label": "",
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
      "description": "",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 15,
        "y": 47
      },
      "id": 47,
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
      "percentage": false,
      "pointradius": 3,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "0-499 bundles",
          "dimensions": {
            "Number of Bundles": "0-499",
            "Output Format": "csv"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "500-999 bundles",
          "dimensions": {
            "Number of Bundles": "500-999",
            "Output Format": "csv"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1000-1499 bundles",
          "dimensions": {
            "Number of Bundles": "1000-1499",
            "Output Format": "csv"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1500-1999 bundles ",
          "dimensions": {
            "Number of Bundles": "1500-1999",
            "Output Format": "csv"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "2000-2499 bundles",
          "dimensions": {
            "Number of Bundles": "2000-2499",
            "Output Format": "csv"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "E",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Csv Request Duration",
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
          "decimals": null,
          "format": "s",
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
      "description": "",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 20,
        "y": 47
      },
      "id": 49,
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
      "percentage": false,
      "pointradius": 3,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "0-499 bundles",
          "dimensions": {
            "Number of Bundles": "0-499",
            "Output Format": "mtx"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "500-999 bundles",
          "dimensions": {
            "Number of Bundles": "500-999",
            "Output Format": "mtx"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1000-1499 bundles",
          "dimensions": {
            "Number of Bundles": "1000-1499",
            "Output Format": "mtx"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "1500-1999 bundles ",
          "dimensions": {
            "Number of Bundles": "1500-1999",
            "Output Format": "mtx"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "2000-2499 bundles",
          "dimensions": {
            "Number of Bundles": "2000-2499",
            "Output Format": "mtx"
          },
          "highResolution": false,
          "metricName": "Matrix Request Duration",
          "namespace": "dcp-matrix-service-${var.env}",
          "period": "",
          "refId": "E",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Mtx Request Duration",
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
          "decimals": null,
          "format": "s",
          "label": "",
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
    }
  ],
  "refresh": false,
  "schemaVersion": 16,
  "style": "dark",
  "tags": [],
  "templating": {
    "list": [
      {
        "auto": true,
        "auto_count": 30,
        "auto_min": "10s",
        "current": {
          "text": "5m",
          "value": "5m"
        },
        "hide": 0,
        "label": "interval",
        "name": "interval",
        "options": [
          {
            "selected": false,
            "text": "auto",
            "value": "$__auto_interval_interval"
          },
          {
            "selected": false,
            "text": "1m",
            "value": "1m"
          },
          {
            "selected": true,
            "text": "5m",
            "value": "5m"
          },
          {
            "selected": false,
            "text": "10m",
            "value": "10m"
          },
          {
            "selected": false,
            "text": "30m",
            "value": "30m"
          },
          {
            "selected": false,
            "text": "1h",
            "value": "1h"
          },
          {
            "selected": false,
            "text": "6h",
            "value": "6h"
          },
          {
            "selected": false,
            "text": "12h",
            "value": "12h"
          },
          {
            "selected": false,
            "text": "1d",
            "value": "1d"
          },
          {
            "selected": false,
            "text": "7d",
            "value": "7d"
          },
          {
            "selected": false,
            "text": "14d",
            "value": "14d"
          },
          {
            "selected": false,
            "text": "30d",
            "value": "30d"
          }
        ],
        "query": "1m,5m,10m,30m,1h,6h,12h,1d,7d,14d,30d",
        "refresh": 2,
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
  "title": "Matrix [${upper(var.env)}]",
  "uid": "matrix-${var.env}",
  "version": 16
}
EOF
}
