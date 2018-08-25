locals {
  aws_profile = "${var.aws_profile}"
  env         = "${var.env}"
  region      = "${var.region}"

  aws_cloudwatch_data_source_name = "${data.terraform_remote_state.account-dashboards.aws_cloudwatch_data_source_name}"
  aws_logs_data_source_name       = "${data.terraform_remote_state.account-dashboards.aws_logs_data_source_name}"

  gcp_analysis_project_id = "broad-dsde-mint-dev"

  analysis_health_check_id = "${data.terraform_remote_state.health-checks.analysis_health_check_id}"
  dcp_health_check_id      = "${data.terraform_remote_state.health-checks.dcp_health_check_id}"
  dss_health_check_id      = "${data.terraform_remote_state.health-checks.dss_health_check_id}"
  ingest_health_check_id   = "${data.terraform_remote_state.health-checks.ingest_health_check_id}"
  upload_health_check_id   = "${data.terraform_remote_state.health-checks.upload_health_check_id}"
}