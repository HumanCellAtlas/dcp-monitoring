# Environment Alerts

Alerts for a deployment environment.

Currently, alerts are sent to an SQS queue for [propagating alerts to slack](https://github.com/HumanCellAtlas/logs/tree/master/apps/cwl_to_slack).

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| analysis\_health\_check\_id |  | string | n/a | yes |
| aws\_profile |  | string | n/a | yes |
| azul\_health\_check\_id |  | string | n/a | yes |
| dcp\_health\_check\_id |  | string | n/a | yes |
| dss\_health\_check\_id |  | string | n/a | yes |
| env |  | string | n/a | yes |
| ingest\_health\_check\_id |  | string | n/a | yes |
| matrix\_health\_check\_id |  | string | n/a | yes |
| query\_health\_check\_id |  | string | n/a | yes |
| region |  | string | n/a | yes |
| upload\_health\_check\_id |  | string | n/a | yes |

<!-- END -->
