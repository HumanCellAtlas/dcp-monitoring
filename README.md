# Data Coordination Platform Monitoring

`dcp-monitoring` configures the following for component applications of the [Human Cell Atlas](https://www.humancellatlas.org/) [Data Coordination Platform (DCP)](https://www.humancellatlas.org/data-sharing).

* [Health checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-concepts.html#route-53-concepts-health-check)
* [Log-based metric](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogsConcepts.html) configuration
* [Alerts (AKA Alarms)](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#CloudWatchAlarms)
* [Grafana](https://grafana.com/) metrics [data sources](http://docs.grafana.org/features/datasources/) (for more see https://github.com/HumanCellAtlas/metrics)
* Metric [dashboards](https://grafana.com/dashboards)

Further, this repository templates all of this configuration using [terraform](https://www.terraform.io/) and [`fogg`](https://github.com/chanzuckerberg/fogg) to generalize this configuration for multiple clouds (AWS, GCP) and deployment environments (`dev`, `integration`, `staging`, and `prod`).

The term "monitoring" is used here as [defined in the Google SRE handbook](https://landing.google.com/sre/sre-book/chapters/monitoring-distributed-systems/).

## Contents

* [Concepts and design](#concepts-and-design)
  * [Modules](#modules)
* [How-tos](#how-tos)
  * [Deploying a module into an environment](#deploying-a-module-into-an-environment)
  * [Configure an application health check](#configure-an-application-health-check)
  * [Configure an alert](#configure-an-alert)
  * [Develop new Grafana dashboards and datasources](#develop-new-grafana-dashboards-and-datasources)

## Requirements

* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)

## Concepts and design

`dcp-monitoring` defines terraform modules that are templated on two dimensions: cloud accounts and environments.

DCP's cloud accounts are the following.

* `hca-id`
* `hca` or `humancellatlas` - the dev account
* `hca-prod` - the production account

DCP's deployment environments are `dev`, `integration`, `staging`, and `prod`.

`./fogg.json` defines which modules are deployed to which accounts and environments.

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

## How-tos

### Deploying a module into an environment

Once you've specified that a terraform code for deployments be generated in the `terraform/envs` directory for the environments you've specified, you must parameterize each module for each environment by filling out the `variables.tf` file.

Once this is complete you can deploy into that environment with the following steps:

1. `cd terraform/envs/<deployment_env>/<your_module>` to select the environment and module you want to deploy
1. `make apply` to deploy/apply the changes to that environment

### Configure an application health check

1. If this dashboard will be deployed once per account, `cd` to `terraform/modules/account-health-checks`
1. If this dashboard will be deployed once per environment, `cd` to `terrraform/modules/env-health-checks`
1. Create a file of the format `<application_name>.tf`
1. Add your health checks using the [`aws_route53_health_check`](https://www.terraform.io/docs/providers/aws/r/route53_health_check.html) terraform resource
1. Add your health check's id to `outputs.tf` following the format of the other outputs
1. If your application is user facing or supports user-facing features of DCP, add your health check's id to the `child_healthchecks` aggregation in `dcp.tf`
1. `cd` back to the project root directory
1. Follow the instructions outlined in the [Deploying a module into an environment](#deploying-a-module-into-an-environment) section to deploy your health check

### Configure an alert

1. If this dashboard will be deployed once per account, `cd` to `terraform/modules/account-alerts`
1. If this dashboard will be deployed once per environment, `cd` to `terrraform/modules/env-alerts`
1. Create a file of the format `<application_name>.tf`
1. Add your alerts using the [`aws_cloudwatch_metric_alarm`](https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html) terraform resource. Each of your alarms _must_ follow the alarm template below.
1. `cd` back to the root project directory and `fogg apply`
1. Follow the instructions outlined in the [Deploying a module into an environment](#deploying-a-module-into-an-environment) section to deploy your alert

#### Alarm templates

```
resource "aws_cloudwatch_metric_alarm" "matrix" {
  alarm_name = "<application_name>-<optional alert name>-${<'var.aws_profile' for account alerts 'var.env' for env alerts>}"
  ...

  alarm_description = <<EOF
{
  "slack_channel": "<your slack channel>",
  "description": "<description of failure state>"
}
EOF

  alarm_actions = ["${data.aws_sns_topic.alarms.arn}"]
  ok_actions    = ["${data.aws_sns_topic.alarms.arn}"]
}
```
If you are alerting on a health check use the following dimension template.

```
  dimensions {
    HealthCheckId = "${var.<your health check's id>}"
  }
```

1. Add your health check's id to `outputs.tf` following the format of the other outputs
1. If your application is user facing or supports user-facing features of DCP, add your health check's id to the `child_healthchecks` aggregation in `dcp.tf`
1. `cd` back to the project root directory
1. Follow the instructions outlined in the [Deploying a module into an environment](#deploying-a-module-into-an-environment) section to deploy your health check

### Develop new Grafana dashboards and datasources

Use `dcp-monitoring` if you would like to template your dashboard across deployment environments and accounts and upload them to our Grafana deployments ([dev](https://metrics.dev.data.humancellatlas.org/) or [prod](https://metrics.data.humancellatlas.org/).

Note, you don't _need_ to use `dcp-monitoring` to develop dashboards. You can simply edit them by hand in either the of Grafana deployments. The changes you make on Grafana will not appear in this repo and be reusable to other deployments of your software, however.

Here are the steps to deploying a dashboard via `dcp-monitoring`.

1. If this dashboard will be deployed once per account, `cd` to `terraform/modules/account-dashboards`
1. If this dashboard will be deployed once per environment, `cd` to `terrraform/modules/env-dashboards`
1. Create a file of the format `<sys_name>-dashboard.tf`
1. Go to Grafana and create a dashboard for one account or environment
1. Go to your dashboard on Grafana, click settings, then JSON Model and copy the JSON into your terraform file
1. Put the JSON in a [`locals`](https://www.terraform.io/docs/configuration/locals.html) variable in `<sys_name>-dashboard.tf`; remove the `"id"` key; for environment dashboards, namespace the `"uid"` key with `var.env` and the `"title"` key with the suffix ` [${upper(var.env)}]`
1. Add your dashboard JSON to the `"dashboards"` output in `outputs.tf`
1. Define the data sources you need that you might need according to the [Grafana data source API](http://docs.grafana.org/http_api/data_source/) in `datasources.tf`; define one variable for the name of the datasource of the format `<cloud>_<name>_datasource_name` and one variable of the format `<cloud>_<name>_datasource` with the JSON for the data source
1. Replace `datasource` keys in your dashboard json with the name of your new data sources
1. Add your datasource json to the `datasources` output array and the `<cloud>_<name>_datasource_name` variable as an output in `outputs.tf`
1. `cd` to the project root directory `fogg apply`
1. Follow the instructions outlined in the [Deploying a module into an environment](#deploying-a-module-into-an-environment) section to generate the templated JSON for your dashboard deployment
1. `cd` back to the project root directory and follow the steps oulined in the [Upload to Grafana section](https://github.com/HumanCellAtlas/dcp-monitoring#upload-to-grafana).

#### Datasources from GCP

In order to let Grafana fetch data from the Google Cloud projects, you need to give the grafana service account `Monitoring Viewer` permissions to that Google Project. Note that the grafana service account should already exists in another DCP Google project and it just has to be given the right level of permissions to whichever project you want to connect.

Contact the DCP OPS team to get the specific service account email.

In order to give it Monitoring Viewer permission, go to GCloud console and `ADD` the member through `IAM & admin` -> `IAM` section from the side bar.

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
