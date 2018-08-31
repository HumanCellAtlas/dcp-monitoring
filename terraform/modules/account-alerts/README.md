# Account Alerts

Cloud account-wide alerts.

Currently, alerts are sent to an SQS queue for [propagating alerts to slack](https://github.com/HumanCellAtlas/logs/tree/master/apps/cwl_to_slack).

<!-- START -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_profile |  | string | - | yes |
| env |  | string | - | yes |
| logs_health_check_id |  | string | - | yes |
| region |  | string | - | yes |

<!-- END -->
