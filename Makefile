.PHONY: init
init:
	terraform init \
		-backend-config bucket=$(TERRAFORM_BUCKET) \
		-backend-config profile=$(AWS_PROFILE)

.PHONY: install
install:
ifeq (,$(wildcard venv))
	virtualenv venv
endif
	. venv/bin/activate && pip install -r requirements.txt


.PHONY: clean
clean:
	rm -rf target
	rm lambda.zip

.PHONY: build
build: install
	mkdir -p target
	. venv/bin/activate && pip install -r requirements.txt -t ./target
	cp app.py target/


terraform-%:
	terraform $(*) \
		-var zipfile_path=$(TARGET) \
		-var aws_region=$(AWS_DEFAULT_REGION) \
		-var aws_profile=$(AWS_PROFILE)

.PHONY: plan
plan: terraform-plan

.PHONY: apply
apply: terraform-apply
