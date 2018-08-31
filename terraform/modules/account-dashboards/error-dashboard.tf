locals {
  error_dashboard = <<EOF
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
  "iteration": 1535485403759,
  "links": [],
  "panels": [
    {
      "columns": [],
      "datasource": "${local.aws_logs_data_source_name}",
      "description": "Use this query in the logs repo to investigate: `@message:(stacktrace Stacktrace traceback Traceback error Error AssertionError exception Exception critical CRITICAL)`",
      "fontSize": "100%",
      "gridPos": {
        "h": 21,
        "w": 9,
        "x": 0,
        "y": 0
      },
      "id": 2,
      "links": [],
      "pageSize": null,
      "scroll": true,
      "showHeader": true,
      "sort": {
        "col": 1,
        "desc": true
      },
      "styles": [
        {
          "alias": "Time",
          "dateFormat": "YYYY-MM-DD HH:mm:ss",
          "pattern": "Time",
          "type": "date"
        },
        {
          "alias": "",
          "colorMode": null,
          "colors": [
            "rgba(245, 54, 54, 0.9)",
            "rgba(237, 129, 40, 0.89)",
            "rgba(50, 172, 45, 0.97)"
          ],
          "decimals": 2,
          "pattern": "/.*/",
          "thresholds": [],
          "type": "number",
          "unit": "short"
        }
      ],
      "targets": [
        {
          "bucketAggs": [
            {
              "field": "@log_group.keyword",
              "id": "2",
              "settings": {
                "min_doc_count": 1,
                "order": "desc",
                "orderBy": "_term",
                "size": "0"
              },
              "type": "terms"
            }
          ],
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "query": "@message:(stacktrace Stacktrace traceback Traceback error Error AssertionError exception Exception critical CRITICAL)",
          "refId": "A",
          "timeField": "@timestamp"
        }
      ],
      "title": "Log Groups by Number of Errors",
      "transform": "table",
      "type": "table"
    },
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_logs_data_source_name}",
      "fill": 2,
      "gridPos": {
        "h": 21,
        "w": 15,
        "x": 9,
        "y": 0
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
      "linewidth": 2,
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
          "bucketAggs": [
            {
              "fake": true,
              "field": "@log_group.keyword",
              "id": "3",
              "settings": {
                "min_doc_count": 1,
                "order": "desc",
                "orderBy": "_term",
                "size": "10"
              },
              "type": "terms"
            },
            {
              "field": "@timestamp",
              "id": "2",
              "settings": {
                "interval": "$interval",
                "min_doc_count": 0,
                "trimEdges": 0
              },
              "type": "date_histogram"
            }
          ],
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "query": "@message:(stacktrace Stacktrace traceback Traceback error Error AssertionError exception Exception critical CRITICAL)",
          "refId": "A",
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Log Group Error Rates",
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
          "text": "60s",
          "value": "60s"
        },
        "hide": 0,
        "label": "interval",
        "name": "interval",
        "options": [
          {
            "selected": false,
            "text": "30s",
            "value": "30s"
          },
          {
            "selected": true,
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
            "text": "360s",
            "value": "360s"
          }
        ],
        "query": "30s,60s,120s,300s,360s",
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
  "title": "Application Errors [${upper(var.aws_profile)}]",
  "uid": "dcp-errors-${var.env}",
  "version": 5
}
EOF
}
