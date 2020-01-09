locals {
  aws_profile                     =  var.aws_profile
  metadata_schema_health_check_id =  data.terraform_remote_state.singleton-health-checks.metadata_schema_health_check_id
}
