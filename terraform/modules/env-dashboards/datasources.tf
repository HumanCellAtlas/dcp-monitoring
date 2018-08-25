locals {
  gcp_analysis = "gcp-analysis"
  aws_upload = "aws-upload"
}

output "datasources" {
  value = <<EOF
[
  {
    "name": "${local.gcp_analysis}-${var.env}",
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
]
EOF
}
