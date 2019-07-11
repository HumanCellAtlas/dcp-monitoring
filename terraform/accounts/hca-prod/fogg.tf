# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

# Default Provider
provider "aws" {
  version             = "~> 1.27.0"
  region              = "us-east-1"
  profile             = "hca-prod"
  allowed_account_ids = [109067257620]
}

# Aliased Providers (for doing things in every region).

terraform {
  required_version = "=0.11.13"

  backend "s3" {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/accounts/hca-prod.tfstate"
    encrypt = true
    region  = "us-east-1"
    profile = "hca-id"
  }
}

variable "project" {
  type    = "string"
  default = "dcp-observability"
}

variable "region" {
  type    = "string"
  default = "us-east-1"
}

variable "aws_profile" {
  type    = "string"
  default = "hca-prod"
}

variable "owner" {
  type    = "string"
  default = "mweiden@chanzuckerberg.com"
}

variable "aws_accounts" {
  type = "map"

  default = {
    hca-prod = 109067257620

    humancellatlas = 861229788715
  }
}

data "terraform_remote_state" "global" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/global.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "humancellatlas" {
  backend = "s3"

  config = {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/accounts/humancellatlas.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}
