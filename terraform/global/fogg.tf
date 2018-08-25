# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

provider "aws" {
  version = "~> 1.27.0"
  region  = "us-east-1"
  profile = "hca-id"
}

# Aliased Providers (for doing things in every region).

terraform {
  required_version = "~>0.11.7"

  backend "s3" {
    bucket = "org-humancellatlas-634134578715-terraform"

    key = "terraform/dcp-observability/global.tfstate"

    encrypt = true
    region  = "us-east-1"
    profile = "hca-id"
  }
}

variable "env" {
  type    = "string"
  default = ""
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
  default = "global"
}

variable "aws_profile" {
  type    = "string"
  default = "hca-id"
}

variable "owner" {
  type    = "string"
  default = "mweiden@chanzuckerberg.com"
}

variable "tags" {
  type = "map"

  default = {
    project   = "dcp-observability"
    env       = ""
    service   = "global"
    owner     = "mweiden@chanzuckerberg.com"
    managedBy = "terraform"
  }
}