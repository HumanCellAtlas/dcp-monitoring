variable "region" {
  type = "string"
}

variable "env" {
  type = "string"
}

variable "aws_profile" {
  type = "string"
}

variable "dcp_health_check_id" {
  type = "string"
}

variable "dss_health_check_id" {
  type = "string"
}

variable "analysis_health_check_id" {
  type = "string"
}

variable "ingest_health_check_id" {
  type = "string"
}

variable "upload_health_check_id" {
  type = "string"
}

variable "matrix_health_check_id" {
  type = "string"
}

variable "query_health_check_id" {
  type = "string"
}

variable "auth_health_check_id" {
  type = "string"
}

variable "gcp_analysis_project_id" {
  type = "string"
}

variable "aws_cloudwatch_data_source_name" {
  type = "string"
}

variable "aws_logs_data_source_name" {
  type = "string"
}

variable "dss-bucket-dev" {
  type = "string"
  default = "org-humancellatlas-dss-dev"
}

variable "dss-checkout-bucket-dev" {
  type = "string"
  default = "org-humancellatlas-dss-checkout-dev"
}

variable "dss-bucket-integration" {
  type = "string"
  default = "org-humancellatlas-dss-integration"
}

variable "dss-checkout-bucket-integration" {
  type = "string"
  default = "org-humancellatlas-dss-checkout-integration"
}

variable "dss-bucket-staging" {
  type = "string"
  default = "org-hca-dss-staging"
}

variable "dss-checkout-bucket-staging" {
  type = "string"
  default = "org-hca-dss-checkout-staging"
}

variable "dss-bucket-prod" {
  type = "string"
  default = "org-humancellatlas-dss-prod"
}

variable "dss-checkout-bucket-prod" {
  type = "string"
  default = "org-humancellatlas-dss-checkout-prod"
}
