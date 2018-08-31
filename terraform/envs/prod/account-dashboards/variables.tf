locals {
  aws_profile               = "${var.aws_profile}"
  env                       = "${var.env}"
  region                    = "${var.region}"
  gcp_logs_project_id       = "hca-dcp-logs-prod"
  gcp_monitoring_project_id = "hca-monitoring-prod"
  logs_health_check_id      = "${data.terraform_remote_state.account-health-checks.logs_health_check_id}"
}
