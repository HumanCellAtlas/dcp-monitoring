locals {
  aws_cloudwatch_data_source_name        = "account-cloudwatch"
  aws_logs_data_source_name              = "account-elasticsearch"
  gcp_log_project_datasource_name        = "gcp-logs-project"
  gcp_monitoring_project_datasource_name = "gcp-monitoring-project"
}

resource "aws_iam_user" "grafana_datasource" {
  name = "grafana-datasource"
}

resource "aws_iam_policy" "grafana_datasource" {
  name        = "grafana-datasource"
  description = "Credentials for grafana to access CloudWatch Metrics and Logs ElasticSearch"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowReadingMetricsFromCloudWatch",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricStatistics"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "es:DescribeElasticsearchDomain",
                "es:DescribeElasticsearchDomainConfig",
                "es:DescribeElasticsearchDomains",
                "es:ESHttpGet",
                "es:ESHttpHead",
                "es:ListTags"
            ],
            "Resource": [
                "arn:aws:es:${var.region}:${data.aws_caller_identity.current.account_id}:domain/hca-logs"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "es:ListDomainNames",
                "es:ListElasticsearchInstanceTypes",
                "es:DescribeElasticsearchInstanceTypeLimits",
                "es:ListElasticsearchVersions"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AllowReadingTagsFromEC2",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeTags",
                "ec2:DescribeInstances"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "grafana_datasource" {
  name       = "grafana-datasource"
  users      = ["${aws_iam_user.grafana_datasource.name}"]
  policy_arn = "${aws_iam_policy.grafana_datasource.arn}"
}

resource "aws_iam_access_key" "grafana_datasource" {
  user = "${aws_iam_user.grafana_datasource.name}"
}

locals {

  aws_cloudwatch_datasource = <<EOF
{
  "name": "${local.aws_cloudwatch_data_source_name}",
  "type": "cloudwatch",
  "url": "http://monitoring.${var.region}.amazonaws.com",
  "access": "proxy",
  "jsonData": {
    "authType": "keys",
    "defaultRegion": "${var.region}"
  },
  "secureJsonData": {
    "accessKey": "${aws_iam_access_key.grafana_datasource.id}",
    "secretKey": "${aws_iam_access_key.grafana_datasource.secret}"
  },
  "readOnly": false
}
EOF

  aws_logs_data_source = <<EOF
{
  "name": "${local.aws_logs_data_source_name}",
  "type": "elasticsearch",
  "database": "[cwl-]YYYY-MM-DD",
  "url": "http://0.0.0.0:9200",
  "access": "proxy",
  "jsonData": {
    "interval": "Daily",
    "timeFiled": "@timestamp"
  },
  "readOnly": false
}
EOF

  gcp_log_project_datasource = <<EOF
{
  "name": "${local.gcp_log_project_datasource_name}",
  "type": "mtanda-google-stackdriver-datasource",
  "typeLogoUrl": "public/img/icn-datasource.svg",
  "access": "proxy",
  "jsonData": {
    "access": "proxy",
    "defaultProjectId": "${var.gcp_logs_project_id}",
    "keepCookies": []
  },
  "readOnly": false
}
EOF

  gcp_monitoring_project_datasource = <<EOF
{
  "name": "${local.gcp_monitoring_project_datasource_name}",
  "type": "mtanda-google-stackdriver-datasource",
  "typeLogoUrl": "public/img/icn-datasource.svg",
  "access": "proxy",
  "jsonData": {
    "access": "proxy",
    "defaultProjectId": "${var.gcp_monitoring_project_id}",
    "keepCookies": []
  },
  "readOnly": false
}
EOF
}
