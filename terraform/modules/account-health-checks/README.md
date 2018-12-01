# Health Checks

This module generates health checks for applications that are deployed account-wide, as opposed to into a deployment environment.

It outputs health check IDs that can be used in visualizations of application health status.

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_profile | - | string | - | yes |
| env | - | string | - | yes |
| region | - | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| logs\_health\_check\_id | - |
| metrics\_health\_check\_id | - |

<!-- END -->
