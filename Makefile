.PHONY: init
init:
	terraform init \
		-backend-config bucket=$(TERRAFORM_BUCKET) \
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
