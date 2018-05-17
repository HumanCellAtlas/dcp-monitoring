ACCOUNT_ID=$(shell aws sts get-caller-identity | jq -r .Account)
AWS_DEFAULT_REGION=$(shell aws configure get region)
GRAFANA_USER=$(shell aws secretsmanager get-secret-value --secret-id 'metrics/_/grafana_user' | jq -r .SecretString)
GRAFANA_PASSWORD=$(shell aws secretsmanager get-secret-value --secret-id 'metrics/_/grafana_password' | jq -r .SecretString)
GRAFANA_FQDN=$(shell aws secretsmanager get-secret-value --secret-id 'metrics/_/grafana_fqdn' | jq -r .SecretString)


.PHONY: init
init:
	terraform init \
		-backend-config region=$(AWS_DEFAULT_REGION) \
		-backend-config bucket=org-humancellatlas-${ACCOUNT_ID}-terraform \
		-backend-config profile=$(AWS_PROFILE)

terraform-%:
	terraform $(*) \
		-var aws_region=$(AWS_DEFAULT_REGION) \
		-var deployment_stage=$(DEPLOYMENT_STAGE) \
		-var aws_profile=$(AWS_PROFILE)

.PHONY: plan
plan: terraform-plan

.PHONY: apply
apply: terraform-apply

.PHONY: clean
clean:
	rm -rf .terraform

dashboard-%:
	echo '{"dashboard":' > /tmp/dashboard
	terraform output $(*)_dashboard_json >> /tmp/dashboard
	echo ', "overwrite": true}' >> /tmp/dashboard
	@curl -XPOST \
		-u "$(GRAFANA_USER):$(GRAFANA_PASSWORD)" \
		-H 'Accept: application/json' \
		-H 'Content-Type: application/json' \
		-d @/tmp/dashboard \
		https://$(GRAFANA_FQDN)/api/dashboards/db | jq
