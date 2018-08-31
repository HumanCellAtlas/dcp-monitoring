data "aws_caller_identity" "current" {}

module "metrics" {
  source = "../env-metrics"
  env    = "${var.env}"
}
