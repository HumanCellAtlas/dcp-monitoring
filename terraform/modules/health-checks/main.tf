data "aws_caller_identity" "current" {}

provider "aws" {
  region  = "${var.region}"
  profile = "${var.aws_profile}"
}

terraform {
  backend "s3" {
    key = "health-check/app.tfstate"
  }
}

data "aws_sns_topic" "alarms" {
  name = "cloudwatch-alarms"
}
