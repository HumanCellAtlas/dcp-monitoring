locals {
  aws_profile = "${var.aws_profile}"
  env         = "${var.env}"
  region      = "${var.region}"

  aws_cloudwatch_data_source_name = "account-cloudwatch"
  aws_logs_data_source_name       = "account-elasticsearch"

  gcp_analysis_project_id = "broad-dsde-mint-staging"

  analysis_health_check_id = "${data.terraform_remote_state.env-health-checks.analysis_health_check_id}"
  dcp_health_check_id      = "${data.terraform_remote_state.env-health-checks.dcp_health_check_id}"
  dss_health_check_id      = "${data.terraform_remote_state.env-health-checks.dss_health_check_id}"
  ingest_health_check_id   = "${data.terraform_remote_state.env-health-checks.ingest_health_check_id}"
  matrix_health_check_id   = "${data.terraform_remote_state.env-health-checks.matrix_health_check_id}"
  auth_health_check_id     = "${data.terraform_remote_state.env-health-checks.auth_health_check_id}"
}
