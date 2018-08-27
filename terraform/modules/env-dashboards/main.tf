data "aws_caller_identity" "current" {}

module "metrics" {
  source = "../metrics"
  env    = "${var.env}"
}
