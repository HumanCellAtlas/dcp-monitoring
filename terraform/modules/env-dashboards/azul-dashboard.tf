local {
    azul_dashboard = <<EOF
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
  "iteration": 1543522435614,
  "links": [],
  "panels": [
    {
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "decimals": null,
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 0,
        "y": 0
      },
      "id": 2,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "hideEmpty": false,
        "hideZero": false,
        "max": true,
        "min": true,
        "show": true,
        "total": true,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": true,
      "targets": [
        {
          "alias": "Total Requests",
          "dimensions": {
            "ApiName": "azul-service-${var.env}",
            "Stage": "${var.env}"
          },
          "highResolution": true,
          "metricName": "Count",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "HTTP 4XX",
          "dimensions": {
            "ApiName": "azul-service-${var.env}",
            "Stage": "${var.env}"
          },
          "highResolution": true,
          "metricName": "4XXError",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "HTTP 5XX",
          "dimensions": {
            "ApiName": "azul-service-${var.env}",
            "Stage": "${var.env}"
          },
          "highResolution": true,
          "metricName": "5XXError",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "C",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Web Service API Request/Error Rates",
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
      "decimals": null,
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 12,
        "y": 0
      },
      "id": 3,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "hideEmpty": false,
        "hideZero": false,
        "max": true,
        "min": true,
        "show": true,
        "total": true,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": true,
      "targets": [
        {
          "alias": "Total Requests",
          "dimensions": {
            "ApiName": "azul-indexer-${var.env}",
            "Stage": "${var.env}"
          },
          "highResolution": true,
          "metricName": "Count",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "HTTP 4XX",
          "dimensions": {
            "ApiName": "azul-indexer-${var.env}",
            "Stage": "${var.env}"
          },
          "highResolution": true,
          "metricName": "4XXError",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "HTTP 5XX",
          "dimensions": {
            "ApiName": "azul-indexer-${var.env}",
            "Stage": "${var.env}"
          },
          "highResolution": true,
          "metricName": "5XXError",
          "namespace": "AWS/ApiGateway",
          "period": "$interval",
          "refId": "C",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Indexer API Request/Error Rates",
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
        "y": 9
      },
      "id": 5,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "max": true,
        "min": true,
        "show": true,
        "total": true,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
          "alias": "Web Service - Total Invocation Count",
          "bucketAggs": [
            {
              "field": "@timestamp",
              "id": "2",
              "settings": {
                "interval": "auto",
                "min_doc_count": 0,
                "trimEdges": 0
              },
              "type": "date_histogram"
            }
          ],
          "dimensions": {
            "FunctionName": "azul-service-${var.env}"
          },
          "highResolution": true,
          "metricName": "Invocations",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Sum"
          ],
          "timeField": "@timestamp"
        },
        {
          "alias": "Web Service - Total Error Count",
          "dimensions": {
            "FunctionName": "azul-service-${var.env}"
          },
          "highResolution": true,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Web Service Lambda",
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
        "y": 9
      },
      "id": 6,
      "legend": {
        "alignAsTable": true,
        "avg": true,
        "current": true,
        "max": true,
        "min": true,
        "show": true,
        "total": true,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
          "alias": "Indexer - Total Invocation Count",
          "bucketAggs": [
            {
              "field": "@timestamp",
              "id": "2",
              "settings": {
                "interval": "auto",
                "min_doc_count": 0,
                "trimEdges": 0
              },
              "type": "date_histogram"
            }
          ],
          "dimensions": {
            "FunctionName": "azul-indexer-${var.env}"
          },
          "highResolution": true,
          "metricName": "Invocations",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Sum"
          ],
          "timeField": "@timestamp"
        },
        {
          "alias": "Indexer - Total Error Count",
          "dimensions": {
            "FunctionName": "azul-indexer-${var.env}"
          },
          "highResolution": true,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Sum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Indexer Lambda",
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
        "w": 8,
        "x": 0,
        "y": 18
      },
      "id": 8,
      "legend": {
        "alignAsTable": false,
        "avg": false,
        "current": false,
        "max": true,
        "min": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "azul-index-${var.env}"
          },
          "highResolution": true,
          "metricName": "CPUUtilization",
          "namespace": "AWS/ES",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "azul-index-${var.env}"
          },
          "highResolution": true,
          "metricName": "JVMMemoryPressure",
          "namespace": "AWS/ES",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "ES - CPU",
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
        "w": 8,
        "x": 8,
        "y": 18
      },
      "id": 9,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": false,
        "max": true,
        "min": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "azul-index-${var.env}"
          },
          "highResolution": true,
          "metricName": "ReadLatency",
          "namespace": "AWS/ES",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "azul-index-${var.env}"
          },
          "highResolution": true,
          "metricName": "WriteLatency",
          "namespace": "AWS/ES",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "ES - I/O Latency",
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
        "w": 8,
        "x": 16,
        "y": 18
      },
      "id": 10,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": false,
        "max": true,
        "min": true,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "azul-index-${var.env}"
          },
          "highResolution": true,
          "metricName": "FreeStorageSpace",
          "namespace": "AWS/ES",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Minimum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "ES - Free Storage Space",
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
        "y": 27
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
            "TableName": "azul-carts-${var.env}"
          },
          "highResolution": true,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "TableName": "azul-carts-${var.env}"
          },
          "highResolution": true,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "DynamoDB - Carts",
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
        "y": 27
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null as zero",
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
            "TableName": "azul-cartitems-${var.env}"
          },
          "highResolution": true,
          "metricName": "ConsumedReadCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "$interval",
          "refId": "A",
          "region": "default",
          "statistics": [
            "Average"
          ]
        },
        {
          "dimensions": {
            "TableName": "azul-cartitems-${var.env}"
          },
          "highResolution": true,
          "metricName": "ConsumedWriteCapacityUnits",
          "namespace": "AWS/DynamoDB",
          "period": "$interval",
          "refId": "B",
          "region": "default",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "DynamoDB - Cart Items",
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
  "refresh": false,
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
        "query": "30s, 60s, 120s, 300s, 360s",
        "refresh": 2,
        "type": "interval"
      }
    ]
  },
  "time": {
    "from": "now-7d",
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
  "title": "Azul Dashboard [${upper(var.env)}]",
  "uid": "dcp-health-${var.env}",
  "version": 17
}
EOF
}