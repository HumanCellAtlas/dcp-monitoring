output "dcp_dashboard_json" {
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
        "w": 6,
        "x": 0,
        "y": 0
      },
      "id": 2,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$hashKey": "object:337",
          "name": "value to text",
          "value": 1
        },
        {
          "$hashKey": "object:338",
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "DCP",
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
          "$hashKey": "object:273",
          "dimensions": {
            "HealthCheckId": "${aws_route53_health_check.dcp.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "DCP Health",
      "transparent": false,
      "type": "singlestat",
      "valueFontSize": "120%",
      "valueMaps": [
        {
          "$hashKey": "object:340",
          "op": "=",
          "text": "OK",
          "value": "1"
        },
        {
          "$hashKey": "object:342",
          "op": "=",
          "text": "ERR",
          "value": "0"
        }
      ],
      "valueName": "current"
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
        "h": 4,
        "w": 6,
        "x": 6,
        "y": 0
      },
      "id": 6,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$hashKey": "object:402",
          "name": "value to text",
          "value": 1
        },
        {
          "$hashKey": "object:403",
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "INGEST",
      "prefixFontSize": "100%",
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
          "$hashKey": "object:265",
          "dimensions": {
            "HealthCheckId": "${aws_route53_health_check.ingest.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Ingest Health",
      "transparent": false,
      "type": "singlestat",
      "valueFontSize": "100%",
      "valueMaps": [
        {
          "$hashKey": "object:405",
          "op": "=",
          "text": "OK",
          "value": "1"
        },
        {
          "$hashKey": "object:407",
          "op": "=",
          "text": "ERR",
          "value": "0"
        }
      ],
      "valueName": "current"
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
        "h": 4,
        "w": 6,
        "x": 12,
        "y": 0
      },
      "id": 18,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$hashKey": "object:871",
          "name": "value to text",
          "value": 1
        },
        {
          "$hashKey": "object:872",
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "UPLOAD",
      "prefixFontSize": "100%",
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
          "$hashKey": "object:807",
          "dimensions": {
            "HealthCheckId": "${aws_route53_health_check.upload.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Upload Health",
      "transparent": false,
      "type": "singlestat",
      "valueFontSize": "100%",
      "valueMaps": [
        {
          "$hashKey": "object:874",
          "op": "=",
          "text": "OK",
          "value": "1"
        },
        {
          "$hashKey": "object:876",
          "op": "=",
          "text": "ERR",
          "value": "0"
        }
      ],
      "valueName": "current"
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
        "h": 4,
        "w": 6,
        "x": 18,
        "y": 0
      },
      "id": 3,
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
      "prefixFontSize": "100%",
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
            "HealthCheckId": "${aws_route53_health_check.dss.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "DSS Health",
      "transparent": false,
      "type": "singlestat",
      "valueFontSize": "100%",
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
        "h": 4,
        "w": 6,
        "x": 6,
        "y": 4
      },
      "id": 5,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$hashKey": "object:563",
          "name": "value to text",
          "value": 1
        },
        {
          "$hashKey": "object:564",
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "ANALYSIS",
      "prefixFontSize": "100%",
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
          "$hashKey": "object:265",
          "dimensions": {
            "HealthCheckId": "${aws_route53_health_check.analysis.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Analysis Health",
      "transparent": false,
      "type": "singlestat",
      "valueFontSize": "100%",
      "valueMaps": [
        {
          "$hashKey": "object:566",
          "op": "=",
          "text": "OK",
          "value": "1"
        },
        {
          "$hashKey": "object:568",
          "op": "=",
          "text": "ERR",
          "value": "0"
        }
      ],
      "valueName": "current"
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
        "h": 4,
        "w": 6,
        "x": 12,
        "y": 4
      },
      "id": 4,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$hashKey": "object:871",
          "name": "value to text",
          "value": 1
        },
        {
          "$hashKey": "object:872",
          "name": "range to text",
          "value": 2
        }
      ],
      "maxDataPoints": 100,
      "nullPointMode": "connected",
      "nullText": null,
      "postfix": "",
      "postfixFontSize": "50%",
      "prefix": "LOGS",
      "prefixFontSize": "100%",
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
          "$hashKey": "object:807",
          "dimensions": {
            "HealthCheckId": "${aws_route53_health_check.logs.id}"
          },
          "metricName": "HealthCheckStatus",
          "namespace": "AWS/Route53",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": "0.5",
      "title": "Logs Health",
      "transparent": false,
      "type": "singlestat",
      "valueFontSize": "100%",
      "valueMaps": [
        {
          "$hashKey": "object:874",
          "op": "=",
          "text": "OK",
          "value": "1"
        },
        {
          "$hashKey": "object:876",
          "op": "=",
          "text": "ERR",
          "value": "0"
        }
      ],
      "valueName": "current"
    },
    {
      "content": "# ¯\\\\\\_(ツ)_/¯",
      "gridPos": {
        "h": 4,
        "w": 6,
        "x": 18,
        "y": 4
      },
      "id": 20,
      "links": [],
      "mode": "markdown",
      "title": "Your service here!",
      "type": "text"
    },
    {
      "aliasColors": {
        "By Type_Sum": "#bf1b00",
        "errors": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "description": "Graph metrics at the following address to drill down: https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#metricsV2:graph=~(view~'timeSeries~stacked~false~region~'us-east-1~start~'-PT1H~end~'P0D);search=errors;namespace=Logs;dimensions=CountType,LogGroup",
      "fill": 4,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
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
          "metricName": "By Type",
          "namespace": "Logs",
          "period": "",
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
      ]
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "fill": 2,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 8
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
          "metricName": "EstimatedCharges",
          "namespace": "AWS/Billing",
          "period": "",
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
      ]
    },
    {
      "aliasColors": {
        "FailedInvocations_Sum": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "description": "Events meant to trigger processes in the system",
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 16
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
          "metricName": "Invocations",
          "namespace": "AWS/Events",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:1917",
          "alias": "",
          "dimensions": {},
          "metricName": "FailedInvocations",
          "namespace": "AWS/Events",
          "period": "",
          "refId": "B",
          "region": "us-east-1",
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
        "y": 16
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
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "",
          "refId": "A",
          "region": "us-east-1",
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
          "region": "us-east-1",
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
      ]
    },
    {
      "aliasColors": {},
      "bars": true,
      "dashLength": 10,
      "dashes": false,
      "datasource": "Cloudwatch",
      "fill": 9,
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 24
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
          "metricName": "AuthorizationFailureCount",
          "namespace": "CloudTrailMetrics",
          "period": "",
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
          "metricName": "ConsoleSignInFailureCount",
          "namespace": "CloudTrailMetrics",
          "period": "",
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
          "metricName": "IAMPolicyEventCount",
          "namespace": "CloudTrailMetrics",
          "period": "",
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
          "metricName": "SecurityGroupEventCount",
          "namespace": "CloudTrailMetrics",
          "period": "",
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
      ]
    }
  ],
  "refresh": "1m",
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
  "title": "DCP Health [${upper(var.deployment_stage)}]",
  "uid": "v4-0_FWiz",
  "version": 3
}

EOF
}
