# Account Alerts

Cloud account-wide alerts.

Currently, alerts are sent to an SQS queue for [propagating alerts to slack](https://github.com/HumanCellAtlas/logs/tree/master/apps/cwl_to_slack).

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_profile |  | string | n/a | yes |
| env |  | string | n/a | yes |
| logs\_health\_check\_id |  | string | n/a | yes |
| metrics\_health\_check\_id |  | string | n/a | yes |
| region |  | string | n/a | yes |

<!-- END -->
