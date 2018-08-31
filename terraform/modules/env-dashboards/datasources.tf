locals {
  gcp_analysis_datasource_name = "gcp-analysis-${var.env}"
  aws_upload                   = "aws-upload"
  upload_db_datasource_name    = "upload-db-${var.env}"

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

  upload_db_datasource = <<EOF
{
  "name": "${local.upload_db_datasource_name}",
  "type": "postgres",
  "url": "REDACTED",
  "user": "uploaddev",
  "secureJsonData": {
    "password": "REDACTED"
  },
  "jsonData": {
    "sslmode": "disable"
  },
  "readOnly": false
}
EOF
}
