# Environment Dashboards

This module takes health check identifiers and account-wide data sources as input and generates the following.

* The DCP Health Dashboard
* The [Data Storage Service (DSS)](https://github.com/HumanCellAtlas/data-store) Dashboard
* Data sources specific to this environment

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| analysis\_health\_check\_id |  | string | n/a | yes |
| aws\_cloudwatch\_data\_source\_name |  | string | n/a | yes |
| aws\_logs\_data\_source\_name |  | string | n/a | yes |
| aws\_profile |  | string | n/a | yes |
| dcp\_health\_check\_id |  | string | n/a | yes |
| dss\_health\_check\_id |  | string | n/a | yes |
| env |  | string | n/a | yes |
| gcp\_analysis\_project\_id |  | string | n/a | yes |
| ingest\_health\_check\_id |  | string | n/a | yes |
| matrix\_health\_check\_id |  | string | n/a | yes |
| query\_health\_check\_id |  | string | n/a | yes |
| region |  | string | n/a | yes |
| upload\_health\_check\_id |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_upload\_datasource\_name |  |
| dashboards |  |
| datasources |  |
| gcp\_analysis\_datasource\_name |  |
| gcp\_analysis\_datasource\_name |  |
| hca\_logs\_ttfb\_datasource\_name |  |

<!-- END -->
