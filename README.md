# Data Coordination Platform Monitoring

`dcp-monitoring` configures the following for component applications of the [Human Cell Atlas](https://www.humancellatlas.org/) [Data Coordination Platform (DCP)](https://www.humancellatlas.org/data-sharing).

* [Health checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-concepts.html#route-53-concepts-health-check)
* Log-based metric configuration
* [Alerts (AKA Alarms)](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#CloudWatchAlarms)
* [Grafana](https://grafana.com/) metrics [data sources](http://docs.grafana.org/features/datasources/) (for more see https://github.com/HumanCellAtlas/metrics)
* Metric [dashboards](https://grafana.com/dashboards)

Further, this repository templates all of this configuration usint [terraform](https://www.terraform.io/) and [`fogg`](https://github.com/chanzuckerberg/fogg) to generalize this configuration for multiple clouds (AWS, GCP) and deployment environments (`dev`, `integration`, `staging`, and `prod`).

## Contents

* [Design](#design)
  * [Modules](#modules)
  * [Deploying into an environment](#deploying)
* [How-tos](#how-tos)
  * [Develop new Grafana dashboards and datasources](#dashboards)

<a name="design"></a>
## Design

`dcp-monitoring` defines terraform modules that are templated on two dimensions: cloud accounts and environments.

`./fogg.json` defines which modules are deployed to which accounts and environments.

<a name="modules"></a>
### Modules

The configuration for health checks, log-based metrics, alerts (alarms) and Grafana dashboards are located in terraform modules in the `terraform/modules` directory.

Modules that are prefixed with `account` are deployed once per cloud account

* `account-health-checks` configures AWS Route53 health checks (e.g. "The [logs system](https://github.com/HumanCellAtlas/logs) is deployed once per AWS account. Ping `http://logs.data.humancellatlas.org/health` once every 30 seconds from around the world and tell me if it's healthy")
* `account-alerts` configures alerts (e.g. "Raise an alert if we have lambda errors over X in account 123")
* `account-dashboards` generates JSON templates for Grafana dashboards (e.g. the [Account Status](https://metrics.dev.data.humancellatlas.org/d/account-dev/account-status-hca?refresh=1m&orgId=1) dashboard)
* `account-metrics` log-based metrics that you can use in CloudWatch Metrics or Grafana

Modules that are prefixed with `env` are deployed once per deployment environment. The deployment environments are `dev`, `integration`, `staging`, and `prod`.

* `env-health-checks` configures AWS Route53 health checks (e.g. "[DSS](https://github.com/HumanCellAtlas/data-store) is deployed once per development environment. Ping `https://dss.data.humancellatlas.org/internal/health` once every 30 seconds from around the world and tell me if it's healthy")
* `env-alerts` configures alerts (e.g. "Raise an alert if we have APIGateway errors on DSS over X per minute.")
* `env-dashboards` generates JSON templates for Grafana dashboards (e.g. the [DSS](https://metrics.dev.data.humancellatlas.org/d/dss-dev/dss-dev?refresh=1m&orgId=1) dashboard)
* `env-metrics` log-based metrics that you can use in CloudWatch Metrics or Grafana

<a name="deploying"></a>
### Deploying into an environment
Once you've specified that a terraform code for deployments be generated in the `terraform/envs` directory for the environments you've specified, you must parameterize each module for each environment by filling out the `variables.tf` file.

Once this is complete you can deploy into that environment with `make apply`.

<a name="how-tos"></a>
## How-tos

<a name="dashboards"></a>
### Develop new Grafana dashboards and datasources

`dcp-monitoring` enables uploading metric dashboards templated by cloud account and deployment environment. Importantly, you don't need to use `dcp-monitoring` to develop dashboards. You can simply edit them by hand in either the [dev](https://metrics.dev.data.humancellatlas.org/) or [prod](https://metrics.data.humancellatlas.org/) Grafana deployments. Do use `dcp-monitoring` if you would like to generalize your dashboards across accounts and environments.

Here are the steps to deploying a dashboard via `dcp-monitoring`.

1. If this dashboard will be deployed once per account, `cd` to `terraform/modules/account-dashboards`
1. If this dashboard will be deployed once per environment, `cd` to `terrraform/modules/env-dashboards`
1. Create a file of the format `<sys_name>-dashboard.tf`
1. Go to Grafana and create a dashboard for one account or environment
1. Go to your dashboard on Grafana, click settings, then JSON Model and copy the JSON into your terraform file
1. Put the JSON in a local variable `<sys_name>-dashboard.tf`; remove the `"id"` key; for environment dashboards, namespace the `"uid"` key with `var.env` and the `"title"` key with the suffix ` [${upper(var.env)}]`
1. Define the data sources you need that you might need according to the [Grafana data source API](http://docs.grafana.org/http_api/data_source/) in `datasources.tf`; define one variable for the name of the datasource of the format `<cloud>_<name>_datasource_name` and one variable of the format `<cloud>_<name>_datasource` with the JSON for the data source
1. Replace `datasource` keys in your dashboard json with the name of your new data sources
1. Add your dashboard and datasource json to the `datasources` and `dashboards` output arrays; add the `<cloud>_<name>_datasource_name` variable as an output
1. `cd` to the project root directory `fogg apply`
1. `cd` to `terraform/envs/<env_you_wish_to_deploy>/<account or env>-dashboards` and then `make apply`
1. `cd` back to the project root directory and follow the steps oulined in the [Upload to Grafana section](https://github.com/HumanCellAtlas/dcp-monitoring#upload-to-grafana).

#### Example dashboard configuration

The following section shows an example dashboard configuration using an AWS CloudWatch 

##### `myapp-terraform.tf`

Here is where you write your templated dashboard JSON.

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

This datasource configuration is specific to AWS CloudWatch. See the Grafana documentation for other data sources.

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

### Upload to Grafana

To upload modules and datasources to grafana, use `./upload-to-grafana`. Execute `./upload-to-grafana -h` for usage details.

## Copyright

Copyright 2017-2018, [The Human Cell Atlas Consortium](https://www.humancellatlas.org/)

For license, see [LICENSE](LICENSE).
