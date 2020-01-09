variable "region" {
  type = string
}

variable "env" {
  type = string
}

variable "aws_profile" {
  type = string
}

variable "dcp_health_check_id" {
  type = string
}

variable "dss_health_check_id" {
  type = string
}

variable "analysis_health_check_id" {
  type = string
}

variable "ingest_health_check_id" {
  type = string
}

variable "upload_health_check_id" {
  type = string
}

variable "matrix_health_check_id" {
  type = string
}

variable "query_health_check_id" {
  type = string
}

variable "auth_health_check_id" {
  type = string
}

variable "gcp_analysis_project_id" {
  type = string
}

variable "aws_cloudwatch_data_source_name" {
  type = string
}

variable "aws_logs_data_source_name" {
  type = string
}

locals {
  env =  var.env
  dss_primary_bucket = {
    "dev" = "org-humancellatlas-dss-dev"
    "integration" = "org-hca-dss-integration"
    "staging" = "org-hca-dss-staging"
    "prod" = "org-hca-dss-prod"
  }
  dss_checkout_bucket = {
    "dev" = "org-humancellatlas-dss-checkout-dev"
    "integration" = "org-hca-dss-checkout-integration"
    "staging" = "org-hca-dss-checkout-staging"
    "prod" = "org-hca-dss-checkout-prod"
  }
}
