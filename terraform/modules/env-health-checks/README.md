# Health Checks

This module generates health checks for DCP component applications in a given deployment environment.

It outputs health check IDs that can be used in visualizations of DCP health status.

<!-- START -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_profile |  | string | - | yes |
| env |  | string | - | yes |
| region |  | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| analysis_health_check_id |  |
| dcp_health_check_id |  |
| dss_health_check_id |  |
| ingest_health_check_id |  |
| upload_health_check_id |  |

<!-- END -->
