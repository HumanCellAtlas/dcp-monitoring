locals {
  aws_profile             =  var.aws_profile
  env                     =  var.env
  logs_health_check_id    =  data.terraform_remote_state.account-health-checks.logs_health_check_id
  metrics_health_check_id =  data.terraform_remote_state.account-health-checks.metrics_health_check_id
  region                  =  var.region
}
