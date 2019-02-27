locals {
  aws_profile              = "${var.aws_profile}"
  env                      = "${var.env}"
  region                   = "${var.region}"
  analysis_health_check_id = "${data.terraform_remote_state.env-health-checks.analysis_health_check_id}"
  dcp_health_check_id      = "${data.terraform_remote_state.env-health-checks.dcp_health_check_id}"
  dss_health_check_id      = "${data.terraform_remote_state.env-health-checks.dss_health_check_id}"
  ingest_health_check_id   = "${data.terraform_remote_state.env-health-checks.ingest_health_check_id}"
  upload_health_check_id   = "${data.terraform_remote_state.env-health-checks.upload_health_check_id}"
  matrix_health_check_id   = "${data.terraform_remote_state.env-health-checks.matrix_health_check_id}"
  azul_health_check_id     = "${data.terraform_remote_state.env-health-checks.azul_health_check_id}"
}
