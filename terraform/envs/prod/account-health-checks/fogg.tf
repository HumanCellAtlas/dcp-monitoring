# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

provider "aws" {
  version             = "~> 1.27.0"
  region              = "us-east-1"
  profile             = "hca-prod"
  allowed_account_ids = [109067257620]
}

# Aliased Providers (for doing things in every region).

terraform {
  required_version = "~>0.11.7"

  backend "s3" {
    bucket = "org-humancellatlas-634134578715-terraform"

    key = "terraform/dcp-observability/envs/prod/components/account-health-checks.tfstate"

    encrypt = true
    region  = "us-east-1"
    profile = "hca-id"
  }
}

variable "env" {
  type    = "string"
  default = "prod"
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
  default = "account-health-checks"
}

variable "aws_profile" {
  type    = "string"
  default = "hca-prod"
}

variable "owner" {
  type    = "string"
  default = "mweiden@chanzuckerberg.com"
}

variable "tags" {
  type = "map"

  default = {
    project   = "dcp-observability"
    env       = "prod"
    service   = "account-health-checks"
    owner     = "mweiden@chanzuckerberg.com"
    managedBy = "terraform"
  }
}

data "terraform_remote_state" "global" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/global.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "account-alerts" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/account-alerts.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "account-dashboards" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/account-dashboards.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "env-alerts" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/env-alerts.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "env-dashboards" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/env-dashboards.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "env-health-checks" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/env-health-checks.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "singleton-alerts" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/singleton-alerts.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "singleton-health-checks" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/envs/prod/components/singleton-health-checks.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

# remote state for accounts

data "terraform_remote_state" "hca-id" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/accounts/hca-id.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "hca-prod" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/accounts/hca-prod.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

data "terraform_remote_state" "humancellatlas" {
  backend = "s3"

  config {
    bucket  = "org-humancellatlas-634134578715-terraform"
    key     = "terraform/dcp-observability/accounts/humancellatlas.tfstate"
    region  = "us-east-1"
    profile = "hca-id"
  }
}

# map of aws_accounts
variable "aws_accounts" {
  type = "map"

  default = {
    hca-prod = 109067257620

    humancellatlas = 861229788715
  }
}
