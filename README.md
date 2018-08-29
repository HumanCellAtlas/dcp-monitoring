# Data Coordination Platform Monitoring

`dcp-monitoring` configures the following for component applications of the [Human Cell Atlas](https://www.humancellatlas.org/) [Data Coordination Platform (DCP)](https://www.humancellatlas.org/data-sharing).

* Health checks
* Log-based metric configuration
* Alerting
* [Grafana](https://grafana.com/) metrics [data sources](http://docs.grafana.org/features/datasources/) (for more see https://github.com/HumanCellAtlas/metrics)
* Metric [dashboards](https://grafana.com/dashboards)

Further, this repository templates all of this configuration usint [terraform](https://www.terraform.io/) and [`fogg`](https://github.com/chanzuckerberg/fogg) to generalize this configuration for multiple clouds (AWS, GCP) and deployment environments (`dev`, `integration`, `staging`, and `prod`).

## Design

`dcp-monitoring` defines terraform modules that are templated on two dimensions: cloud accounts and environments.

`./fogg.json` defines which modules are deployed to which accounts and environments.

## Development

### Developing or changing a new module
Configuration templates are located in `terraform/modules`.

To define a module, it must be added to `fogg.json` and `fogg apply` must be run. Once any changes have been applied to the module code, `fogg apply` must be run.

### Deploying into an environment
Once that you've specified that a terraform code for deployments be generated in the `terraform/envs` directory for the environments you've specified. You must parameterize each module for each environment by filling out the `variables.tf` file.

Once this is complete you can deploy into that environment with `make apply`.

### Developing new Grafana dashboards and datasources

`dcp-monitoring` enables uploading metric dashboards templated by cloud account and deployment environment. Importantly, you don't need to use `dcp-monitoring` to develop dashboards. You can simply edit them by hand in either the [dev](https://metrics.dev.data.humancellatlas.org/) or [prod](https://metrics.data.humancellatlas.org/) Grafana deployments. Do use `dcp-monitoring` if you would like to generalize your dashboards across accounts and environments.

Here are the steps to deploying a dashboard via `dcp-monitoring`.

1. If this dashboard will be deployed once per account, `cd` to `terraform/modules/account-dashboards`
1. If this dashboard will be deployed once per environment, `cd` to `terrraform/modules/env-dashboards`
1. Create a file of the format `<sys_name>-dashboard.tf`
1. Go to Grafana and create a dashboard for one account or environment
1. Go to the Grafana settings and copy the JSON in it.
1. Put the JSON in a local variable `<sys_name>-dashboard.tf`; remove the `"id"` key; for environment dashboards, namespace the `"uid"` key by `var.env`
1. Define the data sources you need that you might need according to the [Grafana data source API](http://docs.grafana.org/http_api/data_source/) in `datasources.tf`; define one variable for the name of the datasource of the format `<cloud>_<name>_datasource_name` and one variable of the format `<cloud>_<name>_datasource` with the JSON for the data source
1. Replace `datasource` keys in your dashboard json with the name of your new data sources
1. Add your dashboard and datasource json to the `datasources` and `dashboards` output arrays; add the `<cloud>_<name>_datasource_name` variable as an output

#### Example dashboard configuration

##### `myapp-terraform.tf`

Dashboard 
```terraform
locals {
  dcp_dashboard = <<EOF
{
  "panels": [
    {
      ...
      "datasource": "${var.aws_cloudwatch_data_source_name}",
      ...
    },
    ...
  ]
  ...
  "title": "DCP Health [${upper(var.env)}]",
  "uid": "dcp-health-${var.env}",
}
EOF
}
```

##### `datasources.tf`

This is an example for AWS CloudWatch. See the Grafana documentation for other data sources.

```terraform
locals {
  aws_cloudwatch_data_source_name        = "account-cloudwatch"

  aws_cloudwatch_datasource = <<EOF
{
  "name": "${local.aws_cloudwatch_data_source_name}",
  "type": "cloudwatch",
  "url": "http://monitoring.${var.region}.amazonaws.com",
  "access": "proxy",
  "jsonData": {
    "authType": "keys",
    "defaultRegion": "${var.region}"
  },
  "secureJsonData": {
    "accessKey": "${aws_iam_access_key.grafana_datasource.id}",
    "secretKey": "${aws_iam_access_key.grafana_datasource.secret}"
  },
  "readOnly": false
}
EOF
}
```

##### `outputs.tf`

```terraform
output "dashboards" {
  value = <<EOF
[
    ${local.myapp_dashboard},
    ...
]
EOF
}

output "aws_cloudwatch_data_source_name" {
  value = "${local.aws_cloudwatch_data_source_name}"
}

...

output "datasources" {
  value = <<EOF
[
  ${local.aws_cloudwatch_datasource},
  ...
]
EOF
}
```

### Uploading to Grafana

To upload modules and datasources to grafana, use `./upload-to-grafana`. Execute `./upload-to-grafana -h` for usage details.
