data "aws_secretsmanager_secret" "config" {
  name = "dcp-monitoring/_/gcp-credentials.json"
}

data "aws_secretsmanager_secret_version" "config" {
  secret_id = "${data.aws_secretsmanager_secret.config.id}"
}

data "external" "json" {
  program = ["echo", "${data.aws_secretsmanager_secret_version.config.secret_string}"]
}

locals {
  gcp_analysis_datasource_name  = "gcp-analysis-${var.env}"
  aws_upload                    = "aws-upload"
  aws_upload_datasource_name    = "upload-db-${var.env}"
  hca_logs_ttfb_datasource_name = "hca-logs-ttfb"

  hca_logs_ttfb_datasource = <<EOF
{
  "name": "${local.hca_logs_ttfb_datasource_name}",
  "type": "elasticsearch",
  "database": "[ttfb-]YYYY-MM-DD",
  "url": "http://0.0.0.0:9200",
  "access": "proxy",
  "jsonData": {
    "interval": "Daily",
    "timeFiled": "@timestamp"
  },
  "readOnly": false
}
EOF

  gcp_analysis_datasource = <<EOF
{
  "name": "${local.gcp_analysis_datasource_name}",
  "type": "stackdriver",
  "access": "proxy",
  "isDefault": false,
  "readOnly": false,
  "jsonData": {
    "authenticationType": "jwt",
    "tokenUri": "https://accounts.google.com/o/oauth2/token",
    "defaultProject": "${var.gcp_analysis_project_id}",
    "clientEmail": "${lookup(data.external.json.result, "client_email")}"
  },
  "secureJsonData": {
    "privateKey": "${replace(lookup(data.external.json.result, "private_key"), "\n", "\\n")}"
  }
}
EOF

  aws_upload_datasource = <<EOF
{
  "name": "${local.aws_upload_datasource_name}",
  "type": "postgres",
  "url": "${data.external.upload_db_secrets_processing.result.host}",
  "user": "${data.external.upload_db_secrets_processing.result.username}",
  "database": "upload_${var.env}",
  "access": "proxy",
  "secureJsonData": {
    "password": "${data.external.upload_db_secrets_processing.result.password}"
  },
  "jsonData": {
    "access": "proxy",
    "sslmode": "disable"
  },
  "readOnly": false
}
EOF
}

data "aws_secretsmanager_secret" "upload_db_creds" {
  name = "dcp/upload/${var.env}/database"
}

data "aws_secretsmanager_secret_version" "upload_db_creds" {
  secret_id = "${data.aws_secretsmanager_secret.upload_db_creds.id}"
}

data "external" "upload_db_secrets_processing" {
  program = ["sh", "${path.root}/../../../../terraform/modules/env-dashboards/process_upload_db_secrets.sh"]

  query = {
    # arbitrary map from strings to strings, passed
    # to the external program as the data query.
    db_secret_string = "${data.aws_secretsmanager_secret_version.upload_db_creds.secret_string}"
  }
}
