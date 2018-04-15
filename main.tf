
data "aws_caller_identity" "current" {}

provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

// the bucket must be configured with the -backend-config flag on `terraform init`
terraform {
  backend "s3" {
    key = "health-check/app.tfstate"
  }
}

