output "gcp_analysis_datasource_name" {
  value = "${local.gcp_analysis_datasource_name}"
}

output "aws_upload_datasource_name" {
  value = "${local.aws_upload_datasource_name}"
}

output "datasources" {
  value = <<EOF
[
  ${local.gcp_analysis_datasource},
  ${local.aws_upload_datasource}
]
EOF
}

output "dashboards" {
  value = <<EOF
[
  ${local.dcp_dashboard},
  ${local.dss_dashboard},
  ${local.upload_dashboard}
]
EOF
}
