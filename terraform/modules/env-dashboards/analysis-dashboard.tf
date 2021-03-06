locals {
  analysis_dashboard = <<EOF
{
  "__inputs": [
    {
      "name": "DS_GCP-ANALYSIS-${upper(var.env)}",
      "label": "gcp-analysis-${var.env}",
      "description": "",
      "type": "datasource",
      "pluginId": "mtanda-google-stackdriver-datasource",
      "pluginName": "GoogleStackdriver"
    }
  ],
  "__requires": [
    {
      "type": "grafana",
      "id": "grafana",
      "name": "Grafana",
      "version": "5.2.3"
    },
    {
      "type": "panel",
      "id": "graph",
      "name": "Graph",
      "version": "5.0.0"
    },
    {
      "type": "datasource",
      "id": "mtanda-google-stackdriver-datasource",
      "name": "GoogleStackdriver",
      "version": "1.0.0"
    }
  ],
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
  "iteration": 1543530543256,
  "links": [],
  "panels": [
    {
      "aliasColors": {},
      "bars": true,
      "dashLength": 10,
      "dashes": false,
      "datasource": "${local.gcp_analysis_datasource_name}",
      "fill": 1,
      "gridPos": {
        "h": 5,
        "w": 24,
        "x": 0,
        "y": 1
      },
      "id": 9,
      "legend": {
        "alignAsTable": false,
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": false,
      "linewidth": 2,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": true,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Lira-notification-receipt",
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
          "filter": "",
          "format": "time_series",
          "metricType": "logging.googleapis.com/user/Lira-notification-receipt",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "mode": "monitoring",
          "projectId": "",
          "query": "@log_group:\"/gcp/${var.gcp_analysis_project_id}/container/~\" AND @message:\"INFO:lira.api.notifications:Notification received\"",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          },
          "timeField": "@timestamp"
        },
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Cromwell-receipt",
          "filter": "",
          "format": "time_series",
          "metricType": "logging.googleapis.com/user/Lira-Cromwell-receipt",
          "mode": "monitoring",
          "projectId": "",
          "refId": "B",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Notification receipt and Workflow submission Count",
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
          "decimals": 0,
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "description": "This is designed to be discrete.",
      "fill": 4,
      "gridPos": {
        "h": 5,
        "w": 12,
        "x": 0,
        "y": 6
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
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 0.5,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Falcon-Queue-Handler-HeartBeat",
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
          "filter": "resource.labels.cluster_name=\"green-100-us-central1\"",
          "format": "time_series",
          "hide": false,
          "metricType": "logging.googleapis.com/user/Falcon-queue-handler-heartbeat",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "mode": "monitoring",
          "projectId": "",
          "query": "@log_group:\"/gcp/${var.gcp_analysis_project_id}/container/~\" AND @message:\"INFO:falcon.falcon.queue_handler:QueueHandler\"",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          },
          "timeField": "@timestamp"
        },
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Falcon-Queue-Handler-Enqueued-Workflow(s)",
          "filter": "resource.labels.cluster_name=\"green-100-us-central1\"",
          "format": "time_series",
          "metricType": "logging.googleapis.com/user/Falcon-queue-handler-effective-update",
          "mode": "monitoring",
          "projectId": "",
          "refId": "B",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Falcon (Workflow Throttle) Queue handler HeartBeat",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transparent": false,
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
          "decimals": 0,
          "format": "opm",
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "description": "This is designed to be discrete.",
      "fill": 4,
      "gridPos": {
        "h": 5,
        "w": 12,
        "x": 12,
        "y": 6
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
      "linewidth": 2,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 0.5,
      "points": true,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Falcon-Igniter-Heartbeat",
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
          "filter": "resource.labels.cluster_name=\"green-100-us-central1\"",
          "format": "time_series",
          "hide": false,
          "metricType": "logging.googleapis.com/user/Falcon-igniter-heartbeat",
          "metrics": [
            {
              "field": "select field",
              "id": "1",
              "type": "count"
            }
          ],
          "mode": "monitoring",
          "projectId": "",
          "query": "@log_group:\"/gcp/${var.gcp_analysis_project_id}/container/~\" AND @message:\"INFO:falcon.falcon.queue_handler:QueueHandler\"",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          },
          "timeField": "@timestamp"
        },
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Falcon-Igniter-Released-Workflow(s)",
          "filter": "resource.labels.cluster_name=\"green-100-us-central1\"",
          "format": "time_series",
          "metricType": "logging.googleapis.com/user/Falcon-igniter-effective-release",
          "mode": "monitoring",
          "projectId": "",
          "refId": "B",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Falcon (Workflow Throttle) Workflow Igniter HeartBeat",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transparent": false,
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
          "decimals": 0,
          "format": "opm",
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "decimals": null,
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 11
      },
      "id": 2,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "GCE VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.instance_name!=starts_with(\"ggp-\") AND metric.labels.instance_name!=starts_with(\"google-pipelines-worker-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/cpu/utilization",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Infrastructural VM Instances CPU Utilization",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transparent": false,
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
          "format": "percentunit",
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "decimals": null,
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 11
      },
      "id": 4,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Read Operations on VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.device_name!=starts_with(\"disk-1\") AND metric.labels.instance_name!=starts_with(\"ggp-\") AND metric.labels.instance_name!=starts_with(\"google-pipelines-worker-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/disk/read_ops_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        },
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Write Operations on VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.device_name!=starts_with(\"disk-1\") AND metric.labels.instance_name!=starts_with(\"ggp-\") AND metric.labels.instance_name!=starts_with(\"google-pipelines-worker-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/disk/write_ops_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "B",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Infrastructural VM Instances Disk R/W Activity",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transparent": false,
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "decimals": null,
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 19
      },
      "id": 3,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": false,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "GCE VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.instance_name=starts_with(\"ggp-\") OR metric.labels.instance_name=starts_with(\"google-pipelines-worker-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/cpu/utilization",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Volatile Workflow Worker VMs CPU Utilization",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transparent": false,
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
          "format": "percentunit",
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "decimals": null,
      "fill": 3,
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 19
      },
      "id": 5,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": true,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": true
      },
      "lines": true,
      "linewidth": 1,
      "links": [],
      "nullPointMode": "null",
      "percentage": true,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Read Operations on VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.device_name!=starts_with(\"disk-1\") AND metric.labels.instance_name=starts_with(\"ggp-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/disk/read_ops_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        },
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Write Operations on VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.device_name!=starts_with(\"disk-1\") AND metric.labels.instance_name=starts_with(\"ggp-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/disk/write_ops_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "B",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        },
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Read Operations on VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.device_name!=starts_with(\"disk-1\") AND metric.labels.instance_name=starts_with(\"google-pipelines-worker-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/disk/read_ops_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "C",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        },
        {
          "aggregation": {
            "alignmentPeriod": "",
            "crossSeriesReducer": "REDUCE_NONE",
            "groupByFields": [],
            "perSeriesAligner": "ALIGN_NONE"
          },
          "alias": "Write Operations on VM Instance: {{metric.labels.instance_name}}",
          "filter": "metric.labels.device_name!=starts_with(\"disk-1\") AND metric.labels.instance_name=starts_with(\"google-pipelines-worker-\")",
          "format": "time_series",
          "metricType": "compute.googleapis.com/instance/disk/write_ops_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "D",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "Volatile Workflow Worker VM Instances Disk R/W Activity",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "individual"
      },
      "transparent": false,
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "fill": 3,
      "gridPos": {
        "h": 6,
        "w": 12,
        "x": 0,
        "y": 27
      },
      "id": 14,
      "legend": {
        "alignAsTable": false,
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 2,
      "links": [],
      "nullPointMode": "null as zero",
      "percentage": false,
      "pointradius": 5,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": true,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [
              "metric.labels.method"
            ],
            "perSeriesAligner": "ALIGN_RATE"
          },
          "alias": "Method: {{metric.labels.method}}",
          "filter": "resource.labels.bucket_name=\"${var.gcp_analysis_project_id}-cromwell-execution\" ",
          "format": "time_series",
          "metricType": "storage.googleapis.com/api/request_count",
          "mode": "monitoring",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          }
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeShift": null,
      "title": "GCS Cromwell Execution Bucket Requests Rate",
      "tooltip": {
        "shared": true,
        "sort": 0,
        "value_type": "cumulative"
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
          "format": "reqps",
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "decimals": null,
      "fill": 5,
      "fillGradient": 0,
      "gridPos": {
        "h": 6,
        "w": 12,
        "x": 12,
        "y": 27
      },
      "id": 7,
      "legend": {
        "alignAsTable": true,
        "avg": false,
        "current": false,
        "max": false,
        "min": false,
        "rightSide": false,
        "show": true,
        "total": false,
        "values": false
      },
      "lines": true,
      "linewidth": 2,
      "links": [],
      "nullPointMode": "null",
      "options": {
        "dataLinks": []
      },
      "percentage": false,
      "pointradius": 1,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [
        {}
      ],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aggregation": {
            "alignmentPeriod": "$interval",
            "crossSeriesReducer": "REDUCE_SUM",
            "groupByFields": [
              "metric.labels.state"
            ],
            "perSeriesAligner": "ALIGN_RATE"
          },
          "alias": "Status: {{metric.labels.state}}",
          "aliasBy": "",
          "alignOptions": [
            {
              "expanded": true,
              "label": "Alignment options",
              "options": [
                {
                  "label": "interpolate",
                  "metricKinds": [
                    "GAUGE"
                  ],
                  "text": "interpolate",
                  "value": "ALIGN_INTERPOLATE",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "next older",
                  "metricKinds": [
                    "GAUGE"
                  ],
                  "text": "next older",
                  "value": "ALIGN_NEXT_OLDER",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY",
                    "DISTRIBUTION",
                    "STRING",
                    "VALUE_TYPE_UNSPECIFIED",
                    "BOOL"
                  ]
                },
                {
                  "label": "min",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "min",
                  "value": "ALIGN_MIN",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "max",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "max",
                  "value": "ALIGN_MAX",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "mean",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "mean",
                  "value": "ALIGN_MEAN",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "count",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "count",
                  "value": "ALIGN_COUNT",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY",
                    "BOOL"
                  ]
                },
                {
                  "label": "sum",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "sum",
                  "value": "ALIGN_SUM",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY",
                    "DISTRIBUTION"
                  ]
                },
                {
                  "label": "stddev",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "stddev",
                  "value": "ALIGN_STDDEV",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "percent change",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "percent change",
                  "value": "ALIGN_PERCENT_CHANGE",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                }
              ]
            }
          ],
          "alignmentPeriod": "$interval",
          "crossSeriesReducer": "REDUCE_COUNT",
          "defaultProject": "loading project...",
          "filter": "",
          "filters": [
            "resource.label.subscription_id",
            "=",
            "lira-push-notifications"
          ],
          "format": "time_series",
          "groupBys": [],
          "hide": false,
          "lastQuery": "aggregation.alignmentPeriod=+60s&aggregation.crossSeriesReducer=REDUCE_COUNT&aggregation.perSeriesAligner=ALIGN_COUNT&filter=metric.type=\"pubsub.googleapis.com/subscription/num_undelivered_messages\"+resource.label.subscription_id=\"lira-push-notifications\"&interval.endTime=2019-11-07T19:32:38Z&interval.startTime=2019-11-07T16:32:38Z&view=FULL",
          "lastQueryError": "",
          "metricKind": "GAUGE",
          "metricType": "pubsub.googleapis.com/subscription/num_undelivered_messages",
          "mode": "monitoring",
          "perSeriesAligner": "ALIGN_COUNT",
          "projectId": "",
          "refId": "A",
          "seriesFilter": {
            "mode": "NONE",
            "param": "",
            "type": "NONE"
          },
          "service": "",
          "unit": "1",
          "usedAlignmentPeriod": 60,
          "valueType": "INT64"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Number of Undelivered Messages",
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
      "datasource": "${local.gcp_analysis_datasource_name}",
      "fill": 1,
      "fillGradient": 0,
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 33
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
      "nullPointMode": "null",
      "options": {
        "dataLinks": []
      },
      "percentage": false,
      "pointradius": 2,
      "points": false,
      "renderer": "flot",
      "seriesOverrides": [],
      "spaceLength": 10,
      "stack": false,
      "steppedLine": false,
      "targets": [
        {
          "aliasBy": "",
          "alignOptions": [
            {
              "expanded": true,
              "label": "Alignment options",
              "options": [
                {
                  "label": "interpolate",
                  "metricKinds": [
                    "GAUGE"
                  ],
                  "text": "interpolate",
                  "value": "ALIGN_INTERPOLATE",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "next older",
                  "metricKinds": [
                    "GAUGE"
                  ],
                  "text": "next older",
                  "value": "ALIGN_NEXT_OLDER",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY",
                    "DISTRIBUTION",
                    "STRING",
                    "VALUE_TYPE_UNSPECIFIED",
                    "BOOL"
                  ]
                },
                {
                  "label": "min",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "min",
                  "value": "ALIGN_MIN",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "max",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "max",
                  "value": "ALIGN_MAX",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "mean",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "mean",
                  "value": "ALIGN_MEAN",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "count",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "count",
                  "value": "ALIGN_COUNT",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY",
                    "BOOL"
                  ]
                },
                {
                  "label": "sum",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "sum",
                  "value": "ALIGN_SUM",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY",
                    "DISTRIBUTION"
                  ]
                },
                {
                  "label": "stddev",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "stddev",
                  "value": "ALIGN_STDDEV",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                },
                {
                  "label": "percent change",
                  "metricKinds": [
                    "GAUGE",
                    "DELTA"
                  ],
                  "text": "percent change",
                  "value": "ALIGN_PERCENT_CHANGE",
                  "valueTypes": [
                    "INT64",
                    "DOUBLE",
                    "MONEY"
                  ]
                }
              ]
            }
          ],
          "alignmentPeriod": "$interval",
          "crossSeriesReducer": "REDUCE_NONE",
          "defaultProject": "loading project...",
          "filters": [
            "resource.label.subscription_id",
            "=",
            "lira-push-notifications"
          ],
          "groupBys": [],
          "lastQuery": "aggregation.alignmentPeriod=+60s&aggregation.crossSeriesReducer=REDUCE_NONE&aggregation.groupByFields=resource.label.subscription_id&aggregation.perSeriesAligner=ALIGN_INTERPOLATE&filter=metric.type=\"pubsub.googleapis.com/subscription/oldest_unacked_message_age\"+resource.label.subscription_id=\"lira-push-notifications\"&interval.endTime=2019-11-07T19:09:39Z&interval.startTime=2019-11-07T13:09:39Z&view=FULL",
          "lastQueryError": "",
          "metricKind": "GAUGE",
          "metricType": "pubsub.googleapis.com/subscription/oldest_unacked_message_age",
          "perSeriesAligner": "ALIGN_INTERPOLATE",
          "refId": "A",
          "service": "",
          "unit": "s",
          "usedAlignmentPeriod": 60,
          "valueType": "INT64"
        }
      ],
      "thresholds": [],
      "timeFrom": null,
      "timeRegions": [],
      "timeShift": null,
      "title": "Oldest Unacknowledged Message Age",
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
        "label": null,
        "name": "interval",
        "options": [
          {
            "selected": false,
            "text": "1s",
            "value": "1s"
          },
          {
            "selected": false,
            "text": "5s",
            "value": "5s"
          },
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
          }
        ],
        "query": "1s,5s,30s,60s,120s,300s",
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
  "title": "ANALYSIS [${upper(var.env)}]",
  "uid": "analysis-${var.env}",
  "version": 27
}
EOF
}
