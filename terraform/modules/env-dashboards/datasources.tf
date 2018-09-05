locals {
  gcp_analysis_datasource_name = "gcp-analysis-${var.env}"
  aws_upload                   = "aws-upload"
  aws_upload_datasource_name    = "upload-db-${var.env}"

  gcp_analysis_datasource = <<EOF
{
  "name": "${local.gcp_analysis_datasource_name}",
  "type": "mtanda-google-stackdriver-datasource",
  "typeLogoUrl": "public/img/icn-datasource.svg",
  "access": "proxy",
  "jsonData": {
    "access": "proxy",
    "defaultProjectId": "${var.gcp_analysis_project_id}",
    "keepCookies": []
  },
  "readOnly": false
}
EOF

  aws_upload_datasource = <<EOF
{
  "name": "${local.aws_upload_datasource_name}",
  "type": "postgres",
  "url": "${data.external.upload_db_secrets_processing.result.username}",
  "user": "${data.external.upload_db_secrets_processing.result.username}",
  "database": "upload_${var.env}",
  "access": "proxy",
  "secureJsonData": {
    "password": "${data.external.upload_db_secrets_processing.result.username}"
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
