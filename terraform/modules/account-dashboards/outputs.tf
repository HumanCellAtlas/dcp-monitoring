output "dashboards" {
  value = <<EOF
[
    ${local.logs_dashboard},
    ${local.account_dashboard},
    ${local.error_dashboard}
]
EOF
}

output "aws_cloudwatch_data_source_name" {
  value = "${local.aws_cloudwatch_data_source_name}"
}

output "aws_logs_data_source_name" {
  value = "${local.aws_logs_data_source_name}"
}

output "gcp_log_project_datasource_name" {
  value = "${local.gcp_log_project_datasource_name}"
}

output "gcp_monitoring_project_datasource_name" {
  value = "${local.gcp_monitoring_project_datasource}"
}

output "datasources" {
  value = <<EOF
[
  ${local.aws_logs_data_source},
  ${local.gcp_log_project_datasource},
  ${local.aws_cloudwatch_datasource},
  ${local.gcp_monitoring_project_datasource}
]
EOF
}
