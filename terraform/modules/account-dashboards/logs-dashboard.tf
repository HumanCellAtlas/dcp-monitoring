locals {
  logs_dashboard = <<EOF
{
  "annotations": {
    "list": [
      {
        "$hashKey": "object:406",
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
  "id": 32,
  "iteration": 1544654173804,
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
      "datasource": "${local.aws_cloudwatch_data_source_name}",
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
            "HealthCheckId": "${var.logs_health_check_id}"
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
      "aliasColors": {},
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_logs_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 18,
        "x": 6,
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
          "bucketAggs": [
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
          "refId": "A",
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Logs ingested [Rate]",
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
      "bars": true,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_logs_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 8
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
      "lines": false,
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
          "$hashKey": "object:454",
          "alias": "Firehose-CWL-Processor",
          "bucketAggs": [
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
          "query": "@log_group:\"/aws/lambda/Firehose-CWL-Processor\" AND  @message:(stacktrace traceback error exception critical)",
          "refId": "A",
          "timeField": "@timestamp"
        },
        {
          "$hashKey": "object:455",
          "alias": "log-retention-policy-enforcer",
          "bucketAggs": [
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
          "query": "@log_group:\"/aws/lambda/log-retention-policy-enforcer\" AND  @message:(stacktrace traceback error exception critical)",
          "refId": "B",
          "timeField": "@timestamp"
        },
        {
          "$hashKey": "object:456",
          "alias": "gcp-to-cwl-exporter",
          "bucketAggs": [
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
          "query": "@log_group:\"/aws/lambda/gcp-to-cwl-exporter\" AND  @message:(stacktrace traceback error exception critical)",
          "refId": "C",
          "timeField": "@timestamp"
        },
        {
          "$hashKey": "object:457",
          "alias": "cwl_firehose_subscriber",
          "bucketAggs": [
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
          "query": "@log_group:\"/aws/lambda/cwl_firehose_subscriber\" AND  @message:(stacktrace traceback error exception critical)",
          "refId": "D",
          "timeField": "@timestamp"
        },
        {
          "$hashKey": "object:458",
          "alias": "es-idx-manager",
          "bucketAggs": [
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
          "query": "@log_group:\"/aws/lambda/es-idx-manager\" AND  @message:(stacktrace traceback error exception critical)",
          "refId": "E",
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Log System Errors [Rate-$interval]",
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
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 2,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 8
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
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 0.5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{FunctionName}}",
          "dimensions": {
            "FunctionName": "gcp-to-cwl-exporter"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{FunctionName}}",
          "dimensions": {
            "FunctionName": "Firehose-CWL-Processor"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{FunctionName}}",
          "dimensions": {
            "FunctionName": "cwl_firehose_subscriber"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{FunctionName}}",
          "dimensions": {
            "FunctionName": "log-retention-policy-enforcer"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{FunctionName}}",
          "dimensions": {
            "FunctionName": "es-idx-manager"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "$interval",
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
      "title": "Lambda Errors [Rate-$interval]",
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
        "Firehose-CWL-Processor-p25.00": "#629e51",
        "Firehose-CWL-Processor-p99.00": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
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
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 0.5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "Firehose-CWL-Processor"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "p50.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "Firehose-CWL-Processor"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "Firehose-CWL-Processor"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "p25.00"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Firehose-CWL-Processor Latencies",
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
        "Firehose-CWL-Processor-p25.00": "#629e51",
        "Firehose-CWL-Processor-p99.00": "#bf1b00",
        "gcp-to-cwl-exporter-p25.00": "#629e51",
        "gcp-to-cwl-exporter-p99.00": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 16
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
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 0.5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "gcp-to-cwl-exporter"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "p50.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "gcp-to-cwl-exporter"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "gcp-to-cwl-exporter"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "p25.00"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "gcp-to-cwl-exporter Latencies",
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
        "Firehose-CWL-Processor-p25.00": "#629e51",
        "Firehose-CWL-Processor-p99.00": "#bf1b00",
        "cwl_firehose_subscriber-p25.00": "#629e51",
        "cwl_firehose_subscriber-p99.00": "#bf1b00",
        "gcp-to-cwl-exporter-p25.00": "#629e51",
        "gcp-to-cwl-exporter-p99.00": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 0,
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 0.5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "log-retention-policy-enforcer"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "p50.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "log-retention-policy-enforcer"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "log-retention-policy-enforcer"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "p25.00"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "log-retention-policy-enforcer Latencies",
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
        "Firehose-CWL-Processor-p25.00": "#629e51",
        "Firehose-CWL-Processor-p99.00": "#bf1b00",
        "cwl_firehose_subscriber-p25.00": "#629e51",
        "cwl_firehose_subscriber-p99.00": "#bf1b00",
        "gcp-to-cwl-exporter-p25.00": "#629e51",
        "gcp-to-cwl-exporter-p99.00": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 8,
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 0.5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "es-idx-manager"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "p50.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "es-idx-manager"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "es-idx-manager"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "p25.00"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "es-idx-manager Latencies",
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
        "Firehose-CWL-Processor-p25.00": "#629e51",
        "Firehose-CWL-Processor-p99.00": "#bf1b00",
        "cwl_firehose_subscriber-p25.00": "#629e51",
        "cwl_firehose_subscriber-p99.00": "#bf1b00",
        "gcp-to-cwl-exporter-p25.00": "#629e51",
        "gcp-to-cwl-exporter-p99.00": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 16,
        "y": 24
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "connected",
      "percentage": false,
      "pointradius": 0.5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "cwl_firehose_subscriber"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "p50.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "cwl_firehose_subscriber"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "p99.00"
          ]
        },
        {
          "alias": "{{FunctionName}}-{{stat}}",
          "dimensions": {
            "FunctionName": "cwl_firehose_subscriber"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "$interval",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "p25.00"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "cwl_firehose_subscriber Latencies",
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
      "datasource": "${local.gcp_log_project_datasource_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 32
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
          "$hashKey": "object:460",
          "aggregation": {
            "alignmentPeriod": "60s",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [
              "metric.labels.response_code"
            ],
            "perSeriesAligner": "ALIGN_RATE"
          },
          "alias": "{{metric.labels.response_code}}",
          "bucketAggs": [
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
          "filter": "",
          "metricType": "pubsub.googleapis.com/topic/send_message_operation_count",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          },
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "GCP Logs Pub/Sub messages [Rate]",
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
      "datasource": "${local.gcp_log_project_datasource_name}",
      "fill": 1,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 32
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
          "$hashKey": "object:537",
          "aggregation": {
            "alignmentPeriod": "60s",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_MEAN"
          },
          "alias": "{{resource.labels.subscription_id}}",
          "bucketAggs": [
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
          "filter": "resource.labels.subscription_id=\"logs.gcp-exporter\"",
          "metricType": "pubsub.googleapis.com/subscription/backlog_bytes",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          },
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "GCP Pub/Sub backlog size",
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
          "$hashKey": "object:561",
          "format": "bytes",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "$hashKey": "object:562",
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
        "dss-index-${var.env}": "#447ebc"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 0,
        "y": 40
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
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "hca-logs"
          },
          "metricName": "SearchableDocuments",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "dss-index-${var.env}": "#447ebc"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 8,
        "y": 40
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
          "$hashKey": "object:705",
          "alias": "{{DomainName}}-{{stat}}",
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "hca-logs"
          },
          "metricName": "FreeStorageSpace",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "$hashKey": "object:706",
          "alias": "{{DomainName}}-{{stat}}",
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "hca-logs"
          },
          "metricName": "FreeStorageSpace",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
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
          "value": 50000
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
          "$hashKey": "object:789",
          "format": "decmbytes",
          "label": null,
          "logBase": 1,
          "max": null,
          "min": "0",
          "show": true
        },
        {
          "$hashKey": "object:790",
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
        "JVMMemoryPressure_Average": "#ef843c"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 16,
        "y": 40
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
          "$hashKey": "object:613",
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "hca-logs"
          },
          "metricName": "JVMMemoryPressure",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
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
          "$hashKey": "object:657",
          "format": "percent",
          "label": null,
          "logBase": 1,
          "max": "100",
          "min": "0",
          "show": true
        },
        {
          "$hashKey": "object:658",
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
        "auto": true,
        "auto_count": 30,
        "auto_min": "10s",
        "current": {
          "text": "1m",
          "value": "1m"
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
            "selected": true,
            "text": "1m",
            "value": "1m"
          },
          {
            "selected": false,
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
  "title": "Logs [${upper(var.aws_profile)}]",
  "uid": "logs-${var.aws_profile}",
  "version": 18
}
EOF
}
