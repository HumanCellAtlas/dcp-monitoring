# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

module "env-health-checks" {
  source      = "../../../modules/env-health-checks"
  aws_profile = "${local.aws_profile}"
  env         = "${local.env}"
  region      = "${local.region}"
}
