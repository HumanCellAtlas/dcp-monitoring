data "aws_caller_identity" "current" {}

module "health_checks" {
  source      = "../health-checks"
  env         = "${var.env}"
  region      = "${var.region}"
  aws_profile = "${var.aws_profile}"
}
