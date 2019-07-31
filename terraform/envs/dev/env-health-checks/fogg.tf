# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.


provider "aws" {
  version             = "~> 2.21.1"
  region              = "us-east-1"
  profile             = "hca"
  allowed_account_ids = [861229788715]
}

# Aliased Providers (for doing things in every region).











terraform {
  required_version = "~>0.12.5"

  backend "s3" {
    bucket = "org-humancellatlas-634134578715-terraform"


    key = "terraform/dcp-observability/envs/dev/components/env-health-checks.tfstate"


    encrypt = true
    region  = "us-east-1"
    profile = "hca-id"
  }
}

variable "env" {
  type    = "string"
  default = "dev"
}

variable "project" {
  type    = "string"
  default = "dcp-observability"
}


variable "region" {
  type    = "string"
  default = "us-east-1"
}


variable "component" {
  type    = "string"
  default = "env-health-checks"
}


variable "aws_profile" {
  type    = "string"
  default = "hca"
}



variable "owner" {
  type    = "string"
  default = "mweiden@chanzuckerberg.com"
}

variable "tags" {
  type = "map"
  default = {
    project   = "dcp-observability"
    env       = "dev"
    service   = "env-health-checks"
    owner     = "mweiden@chanzuckerberg.com"
    managedBy = "terraform"
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



data "terraform_remote_state" "account-alerts" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/envs/dev/components/account-alerts.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "account-dashboards" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/envs/dev/components/account-dashboards.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "account-health-checks" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/envs/dev/components/account-health-checks.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "env-alerts" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/envs/dev/components/env-alerts.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "env-dashboards" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/envs/dev/components/env-dashboards.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}


# remote state for accounts

data "terraform_remote_state" "hca-id" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/accounts/hca-id.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "hca-prod" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/accounts/hca-prod.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "humancellatlas" {
  backend = "s3"

  config = {
    bucket = "org-humancellatlas-634134578715-terraform"

    key     = "terraform/dcp-observability/accounts/humancellatlas.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}


# map of aws_accounts
variable "aws_accounts" {
  type = "map"
  default = {


    hca-id = 634134578715



    hca-prod = 109067257620



    humancellatlas = 861229788715


  }
}
