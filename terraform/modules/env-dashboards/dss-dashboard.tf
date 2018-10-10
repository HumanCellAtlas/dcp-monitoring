locals {
  dss_dashboard = <<EOF
{
  "annotations": {
    "list": [
      {
        "$$hashKey": "object:267",
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
  "iteration": 1528477993463,
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
            "HealthCheckId": "${var.dss_health_check_id}"
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
        "/aws/lambda/dss-${var.env}": "#bf1b00"
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
            "LogGroup": "/aws/lambda/dss-${var.env}"
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
            "LogGroup": "/aws/lambda/dss-index-${var.env}"
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
            "LogGroup": "/aws/lambda/dss-gs-copy-sfn-${var.env}"
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
            "LogGroup": "/aws/lambda/dss-gs-copy-write-metadata-sfn-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "D",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:4026",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-notify-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "E",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:4075",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-sfn-launcher-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "F",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:4124",
          "alias": "{{LogGroup}}",
          "dimensions": {
            "CountType": "errors",
            "LogGroup": "/aws/lambda/dss-sync-${var.env}"
          },
          "metricName": "By Log Group, by Type",
          "namespace": "Logs",
          "period": "",
          "refId": "G",
          "region": "${var.region}",
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
            "ApiName": "dss",
            "Stage": "${var.env}"
          },
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
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "dss",
            "Stage": "${var.env}"
          },
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
          "alias": "{{metric}}",
          "dimensions": {
            "ApiName": "dss",
            "Stage": "${var.env}"
          },
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
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "description": "Rates of HTTP status codes on the DSS API not including health checks",
      "fill": 6,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 8
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
          "namespace": "${module.metrics.dss_metrics_namespace}",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-4xx",
          "namespace": "${module.metrics.dss_metrics_namespace}",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-3xx",
          "namespace": "${module.metrics.dss_metrics_namespace}",
          "period": "",
          "refId": "C",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "$hashKey": "object:137",
          "alias": "{{metric}}",
          "dimensions": {},
          "metricName": "HTTP-2xx",
          "namespace": "${module.metrics.dss_metrics_namespace}",
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "cards": {
        "cardPadding": null,
        "cardRound": null
      },
      "color": {
        "cardColor": "#bf1b00",
        "colorScale": "sqrt",
        "colorScheme": "interpolateSpectral",
        "exponent": 0.5,
        "mode": "spectrum"
      },
      "dataFormat": "timeseries",
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 16
      },
      "heatmap": {},
      "highlightCards": true,
      "id": 22,
      "legend": {
        "show": false
      },
      "links": [
        {
          "includeVars": true,
          "keepTime": false,
          "params": "_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:'2018-06-07T17:53:49.378Z',mode:absolute,to:'2018-06-09T06:59:59.999Z'))&_a=(columns:!(_source),index:'*',interval:auto,query:(match_all:()),sort:!('@timestamp',desc))&from=$__interval",
          "targetBlank": true,
          "title": "kibana",
          "type": "absolute",
          "url": "https://logs.data.humancellatlas.org/_plugin/kibana/app/kibana#/discover"
        }
      ],
      "targets": [
        {
          "dimensions": {
            "ApiName": "dss"
          },
          "hide": false,
          "highResolution": true,
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        }
      ],
      "title": "API Gateway Latencies [BinAverage]",
      "tooltip": {
        "show": true,
        "showHistogram": true
      },
      "transparent": false,
      "type": "heatmap",
      "xAxis": {
        "show": true
      },
      "xBucketNumber": null,
      "xBucketSize": null,
      "yAxis": {
        "decimals": null,
        "format": "dtdurationms",
        "logBase": 2,
        "max": null,
        "min": null,
        "show": true,
        "splitFactor": 4
      },
      "yBucketBound": "auto",
      "yBucketNumber": null,
      "yBucketSize": null
    },
    {
      "aliasColors": {
        "4XXError": "#ef843c",
        "5XXError": "#bf1b00",
        "Maximum": "#bf1b00",
        "Minimum": "#508642"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
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
      "linewidth": 2,
      "links": [],
      "nullPointMode": "null",
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
            "ApiName": "dss",
            "Stage": "${var.env}"
          },
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Maximum"
          ]
        },
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "dss",
            "Stage": "${var.env}"
          },
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "B",
          "region": "${var.region}",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "{{stat}}",
          "dimensions": {
            "ApiName": "dss",
            "Stage": "${var.env}"
          },
          "metricName": "Latency",
          "namespace": "AWS/ApiGateway",
          "period": "",
          "refId": "C",
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
          "op": "gt",
          "value": 5000
        }
      ],
      "timeFrom": null,
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
        "dss-index-${var.env}": "#447ebc"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 0,
        "y": 24
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
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "dss-index-${var.env}"
          },
          "highResolution": false,
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
          "decimals": null,
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
        "dss-index-${var.env}": "#447ebc"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 8,
        "y": 24
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
          "alias": "{{DomainName}}-{{stat}}",
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "dss-index-${var.env}"
          },
          "metricName": "FreeStorageSpace",
          "namespace": "AWS/ES",
          "period": "",
          "refId": "A",
          "region": "${var.region}",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "{{DomainName}}-{{stat}}",
          "dimensions": {
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "dss-index-${var.env}"
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
        "JVMMemoryPressure_Average": "#ef843c"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 0,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 16,
        "y": 24
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
            "ClientId": "${data.aws_caller_identity.current.account_id}",
            "DomainName": "dss-index-${var.env}"
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
      ],
      "yaxis": {
        "align": false,
        "alignLevel": null
      }
    },
    {
      "aliasColors": {
        "failure": "#bf1b00",
        "failure_zoom": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_logs_data_source_name}",
      "fill": 7,
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 0,
        "y": 31
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
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "$hashKey": "object:1090",
          "alias": "Count",
          "yaxis": 1
        },
        {
          "$hashKey": "object:1091",
          "alias": "failure_zoom",
          "fill": 0,
          "linewidth": 2,
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": true,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:274",
          "alias": "ok",
          "bucketAggs": [
            {
              "$hashKey": "object:290",
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
              "$hashKey": "object:288",
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "query": "@log_group:\"/aws/lambda/dss-notify-${var.env}\" AND @message:\"Successfully delivered Notification\"",
          "refId": "A",
          "timeField": "@timestamp"
        },
        {
          "$hashKey": "object:1024",
          "alias": "failure",
          "bucketAggs": [
            {
              "$hashKey": "object:1033",
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
              "$hashKey": "object:1031",
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "query": "@log_group:\"/aws/lambda/dss-notify-${var.env}\" AND @message:\"Failed delivering\"",
          "refId": "C",
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "DSS Notifications / $interval",
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
          "$hashKey": "object:371",
          "format": "short",
          "label": "Ops / interval",
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "$hashKey": "object:372",
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
      "datasource": "${var.aws_logs_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 12,
        "y": 31
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
      "linewidth": 2,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Count",
          "yaxis": 1
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "$hashKey": "object:274",
          "bucketAggs": [
            {
              "$hashKey": "object:290",
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
              "$hashKey": "object:288",
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "query": "@log_group:\"/gcp/broad-dsde-mint-staging/container/~\" AND @message:\"INFO:lira.api.notifications:Notification received\"",
          "refId": "A",
          "timeField": "@timestamp"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Notifications received by GreenBox / $interval",
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
          "$hashKey": "object:371",
          "format": "short",
          "label": "Ops / interval",
          "logBase": 1,
          "max": null,
          "min": 0,
          "show": true
        },
        {
          "$hashKey": "object:372",
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
  "title": "DSS [${upper(var.env)}]",
  "uid": "dss-${var.env}",
  "version": 15
}
EOF
}
