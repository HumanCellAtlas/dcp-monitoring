# Environment Alerts

Alerts for a deployment environment.

Currently, alerts are sent to an SQS queue for [propagating alerts to slack](https://github.com/HumanCellAtlas/logs/tree/master/apps/cwl_to_slack).

<!-- START -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| analysis_health_check_id |  | string | - | yes |
| aws_profile |  | string | - | yes |
| dcp_health_check_id |  | string | - | yes |
| dss_health_check_id |  | string | - | yes |
| env |  | string | - | yes |
| ingest_health_check_id |  | string | - | yes |
| region |  | string | - | yes |
| upload_health_check_id |  | string | - | yes |

<!-- END -->
