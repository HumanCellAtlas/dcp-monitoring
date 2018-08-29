# Data Coordination Platform Monitoring

This repository configures the following for component applications of the [Human Cell Atlas](https://www.humancellatlas.org/) [Data Coordination Platform (DCP)](https://www.humancellatlas.org/data-sharing).

* Health checks
* Log-based metric configuration
* Alerting
* [Grafana](https://grafana.com/) metrics [data sources](http://docs.grafana.org/features/datasources/) (for more see https://github.com/HumanCellAtlas/metrics)
* Metric [dashboards](https://grafana.com/dashboards)

Further, this repository templates all of this configuration usint [terraform](https://www.terraform.io/) and [`fogg`](https://github.com/chanzuckerberg/fogg) to generalize this configuration for multiple clouds (AWS, GCP) and deployment environments (`dev`, `integration`, `staging`, and `prod`).

## Design

`dcp-monitoring` defines terraform modules that are templated on two dimensions: cloud accounts and environments.

`./fogg.json` defines which modules are deployed to which environments.

## Development

### Developing or changing a new module
Configuration templates are located in `terraform/modules`.

To define a module, it must be added to `fogg.json` and `fogg apply` must be run. Once any changes have been applied to the module code, `fogg apply` must be run.

### Deploying into an environment
Once that you've specified that a terraform code for deployments be generated in the `terraform/envs` directory for the environments you've specified. You must parameterize each module for each environment by filling out the `variables.tf` file.

Once this is complete you can deploy into that environment with `make apply`.

## Use

For module use, see the `README.md` in each terraform module.

To upload modules and datasources to grafana, use `./upload-to-grafana`. Execute `./upload-to-grafana -h` for usage details.
