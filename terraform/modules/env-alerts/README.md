# Environment Alerts

Alerts for a deployment environment.

Currently, alerts are sent to an SQS queue for [propagating alerts to slack](https://github.com/HumanCellAtlas/logs/tree/master/apps/cwl_to_slack).

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| analysis\_health\_check\_id | - | string | - | yes |
| aws\_profile | - | string | - | yes |
| dcp\_health\_check\_id | - | string | - | yes |
| dss\_health\_check\_id | - | string | - | yes |
| env | - | string | - | yes |
| ingest\_health\_check\_id | - | string | - | yes |
| matrix\_health\_check\_id | - | string | - | yes |
| region | - | string | - | yes |
| upload\_health\_check\_id | - | string | - | yes |

<!-- END -->
