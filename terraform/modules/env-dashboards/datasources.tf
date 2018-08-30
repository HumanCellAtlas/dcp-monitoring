locals {
  gcp_analysis_datasource_name = "gcp-analysis-${var.env}"
  aws_upload                   = "aws-upload"

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
}
