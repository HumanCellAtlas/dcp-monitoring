locals {
  aws_profile               = "${var.aws_profile}"
  env                       = "${var.env}"
  region                    = "${var.region}"
  gcp_logs_project_id       = "human-cell-atlas-logs"
  gcp_monitoring_project_id = "hca-monitoring-dev"
  logs_health_check_id      = "${data.terraform_remote_state.health-checks.logs_health_check_id}"
}
