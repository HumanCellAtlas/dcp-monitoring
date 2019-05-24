# Health Checks

This module generates health checks for DCP component applications in a given deployment environment.

It outputs health check IDs that can be used in visualizations of DCP health status.

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_profile |  | string | n/a | yes |
| env |  | string | n/a | yes |
| region |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| analysis\_health\_check\_id |  |
| azul\_health\_check\_id |  |
| data\_browser\_and\_portal\_health\_check\_id |  |
| dcp\_health\_check\_id |  |
| dss\_health\_check\_id |  |
| ingest\_health\_check\_id |  |
| matrix\_health\_check\_id |  |
| upload\_health\_check\_id |  |

<!-- END -->
