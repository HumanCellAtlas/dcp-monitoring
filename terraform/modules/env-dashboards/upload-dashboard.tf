locals {
upload_dashboard = <<EOF
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
  "id": 9,
  "links": [],
  "panels": [
    {
      "aliasColors": {
        "max_checksum_time": "#e5ac0e",
        "max_checksumming_latency": "#0a437c"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "upload-db-${var.env}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 0,
        "y": 0
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "",
          "format": "time_series",
          "hide": false,
          "rawSql": "SELECT\n  $__timeGroup(created_at,'1h'),\n  AVG(extract(epoch from checksum_started_at - created_at)) as avg_checksumming_latency\nFROM checksum\nWHERE $__timeFilter(created_at) and checksum_started_at is not null and job_id is not null\nGROUP BY time\n",
          "refId": "A"
        },
        {
          "alias": "",
          "format": "time_series",
          "hide": false,
          "rawSql": "SELECT\n  $__timeGroup(created_at,'1h'),\n  AVG(extract(epoch from validation_started_at - created_at)) as avg_validation_latency\nFROM validation\nWHERE $__timeFilter(created_at) and validation_started_at is not null and job_id is not null\nGROUP BY time\n",
          "refId": "B"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Batch Scheduling Latency",
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
        "max_checksum_time": "#e5ac0e"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "upload-db-${var.env}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 8,
        "y": 0
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "",
          "format": "time_series",
          "rawSql": "SELECT\n  $__timeGroup(updated_at,'1h'),\n  AVG(extract(epoch from validation_ended_at - validation_started_at)) as avg_validation_time\nFROM validation\nWHERE $__timeFilter(updated_at) and validation_ended_at is not null and job_id is not null\nGROUP BY time",
          "refId": "A"
        },
        {
          "alias": "",
          "format": "time_series",
          "rawSql": "SELECT\n  $__timeGroup(updated_at,'1h'),\n  MAX(extract(epoch from validation_ended_at - validation_started_at)) as max_validation_time\nFROM validation\nWHERE $__timeFilter(updated_at) and validation_ended_at is not null and job_id is not null\nGROUP BY time",
          "refId": "C"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Batch Validation Duration",
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
        "max_checksum_time": "#e5ac0e"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "upload-db-${var.env}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 16,
        "y": 0
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "",
          "format": "time_series",
          "rawSql": "SELECT\n  $__timeGroup(updated_at,'1h'),\n  AVG(extract(epoch from checksum_ended_at - checksum_started_at)) as avg_checksumming_duration\nFROM checksum\nWHERE $__timeFilter(updated_at) and checksum_ended_at is not null and job_id is not null\nGROUP BY time\n",
          "refId": "A"
        },
        {
          "alias": "",
          "format": "time_series",
          "rawSql": "SELECT\n  $__timeGroup(updated_at,'1h'),\n  MAX(extract(epoch from checksum_ended_at - checksum_started_at)) as max_checksum_duration\nFROM checksum\nWHERE $__timeFilter(updated_at) and checksum_ended_at is not null and job_id is not null\nGROUP BY time\n",
          "refId": "C"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Batch Checksumming Duration",
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
        "Errors (sum/10min)": "#bf1b00",
        "Errors (sum/30min)": "#bf1b00",
        "Errors (sum/5min)": "#bf1b00",
        "Errors (sum/hr)": "#890f02",
        "Errors(sum/hr)": "#bf1b00",
        "Upload API Dev Errors": "#890f02",
        "sum/hr": "#7eb26d"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 4,
        "x": 0,
        "y": 7
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "Invocations(sum/hr)",
          "dimensions": {
            "FunctionName": "upload-api-dev"
          },
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "3600",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors(sum/hr)",
          "dimensions": {
            "FunctionName": "upload-api-dev"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "3600",
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
      "title": "API stats",
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
      "aliasColors": {
        "Errors": "#890f02",
        "Errors(sum/10min)": "#bf1b00",
        "Errors(sum/30min)": "#bf1b00",
        "Errors(sum/hr)": "#bf1b00"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 4,
        "x": 4,
        "y": 7
      },
      "id": 3,
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
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "Errors(sum/10min)",
          "yaxis": 1
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "Invocations(sum/hr)",
          "dimensions": {
            "FunctionName": "upload-checksum-daemon-dev"
          },
          "highResolution": false,
          "metricName": "Invocations",
          "namespace": "AWS/Lambda",
          "period": "3600",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Sum"
          ]
        },
        {
          "alias": "Errors(sum/hr)",
          "dimensions": {
            "FunctionName": "upload-checksum-daemon-dev"
          },
          "highResolution": false,
          "metricName": "Errors",
          "namespace": "AWS/Lambda",
          "period": "3600",
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
      "title": "Checksum daemon stats",
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
      "aliasColors": {
        "Database Connections": "#e5ac0e",
        "Errors": "#890f02",
        "Errors (sum/30min)": "#bf1b00",
        "Errors (sum/hr)": "#890f02",
        "Upload API Dev Errors": "#890f02"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 8,
        "y": 7
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
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [
        {
          "alias": "CPUUtilization",
          "yaxis": 2
        },
        {
          "alias": "Database Connections",
          "yaxis": 2
        }
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "CPU Utilization(%)",
          "dimensions": {
            "DBInstanceIdentifier": "upload-cluster-dev-0"
          },
          "highResolution": false,
          "metricName": "CPUUtilization",
          "namespace": "AWS/RDS",
          "period": "600",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "Database Connections",
          "dimensions": {
            "DBInstanceIdentifier": "upload-cluster-dev-0"
          },
          "highResolution": false,
          "metricName": "DatabaseConnections",
          "namespace": "AWS/RDS",
          "period": "600",
          "refId": "B",
          "region": "us-east-1",
          "statistics": [
            "Average"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Database Health",
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
          "format": "percent",
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
        "max_checksum_time": "#e5ac0e"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "upload-db-${var.env}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 8,
        "x": 16,
        "y": 7
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
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "",
          "format": "time_series",
          "rawSql": "SELECT\n  $__timeGroup(updated_at,'1h'),\n  AVG(size) as avg_file_size\nFROM file\nWHERE $__timeFilter(updated_at)\nGROUP BY time\n",
          "refId": "A"
        },
        {
          "alias": "",
          "format": "time_series",
          "rawSql": "SELECT\n  $__timeGroup(updated_at,'1h'),\n  MAX(size) as max_file_size\nFROM file\nWHERE $__timeFilter(updated_at)\nGROUP BY time\n",
          "refId": "B"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "File Size",
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
        "Duration (avg/30min)": "#629e51",
        "Duration (max/10min)": "#e5ac0e",
        "Duration (max/30min)": "#cca300"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 4,
        "x": 0,
        "y": 14
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
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "avg_duration",
          "dimensions": {
            "FunctionName": "upload-api-dev"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "3600",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "max_duration",
          "dimensions": {
            "FunctionName": "upload-api-dev"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "3600",
          "refId": "B",
          "region": "us-east-1",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "API lambda duration",
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
        "Duration (max/30min)": "#e5ac0e"
      },
      "bars": false,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      "fill": 1,
      "gridPos": {
        "h": 7,
        "w": 4,
        "x": 4,
        "y": 14
      },
      "id": 5,
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
      "pointradius": 1,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "alias": "avg_duration",
          "dimensions": {
            "FunctionName": "upload-checksum-daemon-dev"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "3600",
          "refId": "A",
          "region": "us-east-1",
          "statistics": [
            "Average"
          ]
        },
        {
          "alias": "max_duration",
          "dimensions": {
            "FunctionName": "upload-checksum-daemon-dev"
          },
          "highResolution": false,
          "metricName": "Duration",
          "namespace": "AWS/Lambda",
          "period": "3600",
          "refId": "B",
          "region": "us-east-1",
          "statistics": [
            "Maximum"
          ]
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Checksum daemon duration",
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
      "cacheTimeout": null,
      "colorBackground": false,
      "colorValue": false,
      "colors": [
        "#299c46",
        "rgba(237, 129, 40, 0.89)",
        "#d44a3a"
      ],
      "datasource": "upload-db-${var.env}",
      "description": "Filtered by created_at",
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
        "y": 14
      },
      "id": 14,
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
      "tableColumn": "count",
      "targets": [
        {
          "alias": "",
          "format": "table",
          "rawSql": "SELECT\n  count(*)\nFROM checksum\nWHERE $__timeFilter(created_at) and status = 'SCHEDULED'",
          "refId": "A"
        }
      ],
      "thresholds": "",
      "title": "Checksums Scheduled",
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
      "datasource": "upload-db-${var.env}",
      "description": "Filtered by created_at",
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
        "y": 14
      },
      "id": 15,
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
      "tableColumn": "count",
      "targets": [
        {
          "alias": "",
          "format": "table",
          "rawSql": "SELECT\n  count(*)\nFROM checksum\nWHERE $__timeFilter(created_at) and status = 'CHECKSUMMING'",
          "refId": "A"
        }
      ],
      "thresholds": "",
      "title": "Checksums In Progress",
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
      "datasource": "upload-db-${var.env}",
      "description": "Filtered by created_at",
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
        "y": 14
      },
      "id": 16,
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
      "tableColumn": "count",
      "targets": [
        {
          "alias": "",
          "format": "table",
          "rawSql": "SELECT\n  count(*)\nFROM checksum\nWHERE $__timeFilter(created_at) and status = 'CHECKSUMMED'",
          "refId": "A"
        }
      ],
      "thresholds": "",
      "title": "Checksums Completed",
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
      "datasource": "upload-db-${var.env}",
      "description": "Filtered by created_at",
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
        "y": 17
      },
      "id": 13,
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
      "tableColumn": "count",
      "targets": [
        {
          "alias": "",
          "format": "table",
          "rawSql": "SELECT\n  count(*)\nFROM validation\nWHERE $__timeFilter(created_at) and status = 'SCHEDULED'",
          "refId": "A"
        }
      ],
      "thresholds": "",
      "title": "Validations Scheduled",
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
      "datasource": "upload-db-${var.env}",
      "description": "Filtered by created_at",
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
        "y": 17
      },
      "id": 17,
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
      "tableColumn": "count",
      "targets": [
        {
          "alias": "",
          "format": "table",
          "rawSql": "SELECT\n  count(*)\nFROM validation\nWHERE $__timeFilter(created_at) and status = 'VALIDATING'",
          "refId": "A"
        }
      ],
      "thresholds": "",
      "title": "Validations In Progress",
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
      "datasource": "upload-db-${var.env}",
      "description": "Filtered by created_at",
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
        "y": 17
      },
      "id": 18,
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
      "tableColumn": "count",
      "targets": [
        {
          "alias": "",
          "format": "table",
          "rawSql": "SELECT\n  count(*)\nFROM validation\nWHERE $__timeFilter(created_at) and status = 'VALIDATED'",
          "refId": "A"
        }
      ],
      "thresholds": "",
      "title": "Validations Completed",
      "type": "singlestat",
      "valueFontSize": "80%",
      "valueMaps": [
        {
          "op": "=",
          "text": "N/A",
          "value": "null"
        }""
      ],
      "valueName": "avg"
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
    "from": "now-12h",
    "to": "now"
  },
  "timepicker": {
    "hidden": false,
    "refresh_intervals": [
      "1m"
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
  "title": "Upload [${upper(var.env)}]",
  "uid": "upload-${var.env}",
  "version": 6
}
EOF
}
