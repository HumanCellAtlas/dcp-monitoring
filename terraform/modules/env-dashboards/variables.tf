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

variable "gcp_analysis_project_id" {
  type = "string"
}

variable "aws_cloudwatch_data_source_name" {
  type = "string"
}

variable "aws_logs_data_source_name" {
  type = "string"
}
