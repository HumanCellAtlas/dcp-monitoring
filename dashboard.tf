output "dashboard_json" {
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
        "h": 6,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 2,
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
        "show": true
      },
      "tableColumn": "",
      "targets": [
        {
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
      "valueFontSize": "200%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "min"
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
        "h": 6,
        "w": 5,
        "x": 0,
        "y": 6
      },
      "id": 3,
      "interval": null,
      "links": [],
      "mappingType": 1,
      "mappingTypes": [
        {
          "$$hashKey": "object:237",
          "name": "value to text",
          "value": 1
        },
        {
          "$$hashKey": "object:238",
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
        "show": true
      },
      "tableColumn": "",
      "targets": [
        {
          "$$hashKey": "object:125",
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
      "valueFontSize": "200%",
      "valueMaps": [
        {
          "$$hashKey": "object:240",
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "min"
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
        "h": 6,
        "w": 5,
        "x": 5,
        "y": 6
      },
      "id": 5,
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
        "show": true
      },
      "tableColumn": "",
      "targets": [
        {
          "$$hashKey": "object:341",
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
      "valueFontSize": "200%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "min"
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
        "h": 6,
        "w": 5,
        "x": 0,
        "y": 12
      },
      "id": 4,
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
        "show": true
      },
      "tableColumn": "",
      "targets": [
        {
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
      "valueFontSize": "200%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }
      ],
      "valueName": "min"
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
  "version": 2
}
EOF
}
