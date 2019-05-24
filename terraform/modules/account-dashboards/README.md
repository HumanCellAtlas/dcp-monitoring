# Account-level Dashboards

This repository takes cloud account-level information and generates the below.

* Dashboards for monitoring all cloud accounts (AWS, GCP) that deploy services into the same deployment enviroments
* Data sources associated with those accounts

An important data source on the account level is that of the [centralized logging infrastructure](https://github.com/HumanCellAtlas/logs).

<!-- START -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_profile |  | string | n/a | yes |
| env |  | string | n/a | yes |
| gcp\_logs\_project\_id |  | string | n/a | yes |
| gcp\_monitoring\_project\_id |  | string | n/a | yes |
| logs\_health\_check\_id |  | string | n/a | yes |
| region |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_cloudwatch\_data\_source\_name |  |
| aws\_logs\_data\_source\_name |  |
| dashboards |  |
| datasources |  |
| gcp\_log\_project\_datasource\_name |  |
| gcp\_monitoring\_project\_datasource\_name |  |

<!-- END -->
