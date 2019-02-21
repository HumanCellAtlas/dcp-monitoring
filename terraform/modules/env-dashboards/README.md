# Environment Dashboards

This module takes health check identifiers and account-wide data sources as input and generates the following.

* The DCP Health Dashboard
* The [Data Storage Service (DSS)](https://github.com/HumanCellAtlas/data-store) Dashboard
* Data sources specific to this environment

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| analysis\_health\_check\_id | - | string | - | yes |
| aws\_cloudwatch\_data\_source\_name | - | string | - | yes |
| aws\_logs\_data\_source\_name | - | string | - | yes |
| aws\_profile | - | string | - | yes |
| dcp\_health\_check\_id | - | string | - | yes |
| dss\_health\_check\_id | - | string | - | yes |
| env | - | string | - | yes |
| gcp\_analysis\_project\_id | - | string | - | yes |
| ingest\_health\_check\_id | - | string | - | yes |
| matrix\_health\_check\_id | - | string | - | yes |
| region | - | string | - | yes |
| upload\_health\_check\_id | - | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_upload\_datasource\_name | - |
| dashboards | - |
| datasources | - |
| gcp\_analysis\_datasource\_name | - |

<!-- END -->
