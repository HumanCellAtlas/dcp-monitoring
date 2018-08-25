# Account-level Dashboards

This repository takes cloud account-level information and generates the below.

* Dashboards for monitoring all cloud accounts (AWS, GCP) that deploy services into the same deployment enviroments
* Data sources associated with those accounts

An important data source on the account level is that of the [centralized logging infrastructure](https://github.com/HumanCellAtlas/logs).

<!-- START -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_profile |  | string | - | yes |
| env |  | string | - | yes |
| gcp_logs_project_id |  | string | - | yes |
| gcp_monitoring_project_id |  | string | - | yes |
| logs_health_check_id |  | string | - | yes |
| region |  | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| account_dashboard |  |
| aws_cloudwatch_data_source_name |  |
| aws_logs_data_source_name |  |
| datasources |  |
| gcp_log_project_datasource_name |  |
| logs_dashboard |  |

<!-- END -->
