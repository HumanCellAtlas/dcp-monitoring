APP_NAME=grafana
CLUSTER=FarGate-cluster-$(APP_NAME)
AWS_DEFAULT_REGION=$(shell aws configure get region)
ACCOUNT_ID=$(shell aws sts get-caller-identity | jq -r .Account)
SEC_GROUP_ID=$(shell aws ec2 describe-security-groups | jq -r '.SecurityGroups[] | select(.GroupName == "$(APP_NAME)") | .GroupId')
TARGET_GROUP_ARN=$(shell aws elbv2 describe-target-groups | jq -r '.TargetGroups[] | select(.TargetGroupName == "$(APP_NAME)") | .TargetGroupArn')
IMAGE_NAME=$(shell terraform output ecr_uri)
SUBNETS=$(shell terraform output subnets | tr '\n' ' ')
SEC_GROUP=$(shell terraform output security_group)


.PHONY: init
init:
	terraform init \
		-backend-config region=$(AWS_DEFAULT_REGION) \
		-backend-config bucket=org-humancellatlas-${ACCOUNT_ID}-terraform \
		-backend-config profile=$(AWS_PROFILE)

terraform-%:
	terraform $(*) \
		-var domain_name=$(DOMAIN_NAME) \
		-var grafana_fqdn=$(GRAFANA_FQDN) \
		-var cluster=$(CLUSTER) \
		-var aws_region=$(AWS_DEFAULT_REGION) \
		-var deployment_stage=$(DEPLOYMENT_STAGE) \
		-var aws_profile=$(AWS_PROFILE)

.PHONY: plan
plan: terraform-plan

.PHONY: apply
apply: terraform-apply

.PHONY: clean
clean:
	rm -f Dockerfile
	rm -rf .terraform

.PHONY: grafana.ini
grafana.ini:
	cat grafana_template.ini | envsubst '$$GRAFANA_USERNAME $$GRAFANA_PASSWORD' > grafana.ini

.PHONY: all.yaml
all.yaml:
	cat datasources/datasources_template.yaml | \
		GRAFANA_AWS_ACCESS_KEY_ID=$(shell terraform output access_key_id) \
		GRAFANA_AWS_SECRET_ACCESS_KEY=$(shell terraform output secret_access_key) \
		envsubst '$$AWS_DEFAULT_REGION $$GRAFANA_AWS_ACCESS_KEY_ID $$GRAFANA_AWS_SECRET_ACCESS_KEY' > datasources/all.yaml

.PHONY: health.json
health.json:
	terraform output dashboard_json > dashboards/health.json

.PHONY: image
image: grafana.ini all.yaml health.json
	docker build -t $(APP_NAME) .

.PHONY: publish
publish:
	docker tag $(APP_NAME):latest $(IMAGE_NAME)
	docker push $(IMAGE_NAME)

.PHONY: service
service:
	aws ecs register-task-definition --cli-input-json '$(shell export IMAGE_NAME=$(IMAGE_NAME) && cat task.json | envsubst '$$ACCOUNT_ID $$AWS_DEFAULT_REGION $$IMAGE_NAME')'
	aws ecs create-service \
		--service-name $(APP_NAME) \
		--desired-count 0 \
		--cluster $(CLUSTER) \
		--task-definition $(APP_NAME) \
		--network-configuration "awsvpcConfiguration={subnets=[$(SUBNETS)],securityGroups=[$(SEC_GROUP)],assignPublicIp=ENABLED}" \
		--load-balancers targetGroupArn=$(TARGET_GROUP_ARN),containerName=$(APP_NAME),containerPort=3000 \
		--launch-type FARGATE

.PHONY: deploy-service
deploy-service:
	aws ecs update-service \
		--cluster $(CLUSTER) \
		--service $(APP_NAME) \
		--task-definition $(APP_NAME) \
		--desired-count 1 \
		--force-new-deployment

.PHONY: scale-down-service
scale-down-service:
	aws ecs list-services \
		--cluster $(CLUSTER) | \
		jq -r .serviceArns[] | \
		xargs aws ecs update-service --cluster $(CLUSTER) --desired-count 0 --service
	aws ecs list-tasks \
		--cluster $(CLUSTER) \
		--family $(APP_NAME) | \
		jq -r .taskArns[] | \
		xargs aws ecs stop-task --cluster $(CLUSTER) --task

.PHONY: delete-service
delete-service: scale-down-service
	aws ecs list-services \
		--cluster $(CLUSTER) | \
		jq -r .serviceArns[] | \
		xargs aws ecs delete-service --cluster $(CLUSTER) --service

deploy-%:
ifeq ($(AWS_PROFILE),)
	@echo "You must set AWS_PROFILE" && False
endif
ifneq ($(shell cat .terraform/terraform.tfstate | jq -r '.backend.config.profile'),$(AWS_PROFILE))
	rm -r .terraform
	DEPLOYMENT_STAGE=$(*) $(MAKE) init
endif
	DEPLOYMENT_STAGE=$(*) make apply image publish scale-down-service deploy-service
