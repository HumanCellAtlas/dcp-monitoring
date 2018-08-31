# Environment Dashboards

This module takes health check identifiers and account-wide data sources as input and generates the following.

* The DCP Health Dashboard
* The [Data Storage Service (DSS)](https://github.com/HumanCellAtlas/data-store) Dashboard
* Data sources specific to this environment

<!-- START -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| analysis_health_check_id |  | string | - | yes |
| aws_cloudwatch_data_source_name |  | string | - | yes |
| aws_logs_data_source_name |  | string | - | yes |
| aws_profile |  | string | - | yes |
| dcp_health_check_id |  | string | - | yes |
| dss_health_check_id |  | string | - | yes |
| env |  | string | - | yes |
| gcp_analysis_project_id |  | string | - | yes |
| ingest_health_check_id |  | string | - | yes |
| region |  | string | - | yes |
| upload_health_check_id |  | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| dashboards |  |
| datasources |  |
| gcp_analysis_datasource_name |  |

<!-- END -->
