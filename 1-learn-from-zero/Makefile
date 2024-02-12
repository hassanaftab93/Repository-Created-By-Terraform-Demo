.PHONY: init-azurerm
init-azurerm:
	mkdir -p terraform && \
	cp Makefile terraform/ && \
	cd terraform && \
	mkdir modules variables terraform-graph && \
	cd variables && touch local.tfvars && cd .. && \
	touch azure.variables.tf azure.main.tf azure.outputs.tf && \
	echo 'terraform {' > azure.providers.tf && \
	echo '  required_providers {' >> azure.providers.tf && \
	echo '    azurerm = {' >> azure.providers.tf && \
	echo '      source = "hashicorp/azurerm"' >> azure.providers.tf && \
	echo '      version = "3.91.0"' >> azure.providers.tf && \
	echo '    }' >> azure.providers.tf && \
	echo '  }' >> azure.providers.tf && \
	echo '}' >> azure.providers.tf && \
	echo '' >> azure.providers.tf && \
	echo 'provider "azurerm" {' >> azure.providers.tf && \
	echo '  features {}' >> azure.providers.tf && \
	echo '}' >> azure.providers.tf && \
	terraform init && \
	code .

.PHONY: init-aws
init-aws:
	mkdir -p terraform && \
	cp Makefile terraform/ && \
	cd terraform && \
	mkdir modules variables terraform-graph && \
	cd variables && touch local.tfvars && cd .. && \
	touch aws.variables.tf aws.main.tf aws.outputs.tf && \
	echo 'terraform {' > aws.providers.tf && \
	echo '  required_providers {' >> aws.providers.tf && \
	echo '    aws = {' >> aws.providers.tf && \
	echo '      source = "hashicorp/aws"' >> aws.providers.tf && \
	echo '      version = "5.36.0"' >> aws.providers.tf && \
	echo '    }' >> aws.providers.tf && \
	echo '  }' >> aws.providers.tf && \
	echo '}' >> aws.providers.tf && \
	echo '' >> aws.providers.tf && \
	echo 'provider "aws" {' >> aws.providers.tf && \
	echo '  features {}' >> aws.providers.tf && \
	echo '}' >> aws.providers.tf && \
	terraform init && \
	code .

.PHONY: init-google
init-google:
	mkdir -p terraform && \
	cp Makefile terraform/ && \
	cd terraform && \
	mkdir modules variables terraform-graph && \
	cd variables && touch local.tfvars && cd .. && \
	touch google.variables.tf google.main.tf google.outputs.tf && \
	echo 'terraform {' > google.providers.tf && \
	echo '  required_providers {' >> google.providers.tf && \
	echo '    google = {' >> google.providers.tf && \
	echo '      source = "hashicorp/google"' >> google.providers.tf && \
	echo '      version = "5.15.0"' >> google.providers.tf && \
	echo '    }' >> google.providers.tf && \
	echo '  }' >> google.providers.tf && \
	echo '}' >> google.providers.tf && \
	echo '' >> google.providers.tf && \
	echo 'provider "google" {' >> google.providers.tf && \
	echo '  features {}' >> google.providers.tf && \
	echo '}' >> google.providers.tf && \
	terraform init && \
	code .

.PHONY: plan
plan:
	terraform plan -lock=false -var-file ./variables/local.tfvars -out=tfplan

.PHONY: fmt
fmt:
	terraform fmt -recursive

.PHONY: apply
apply:
	terraform apply -lock=false tfplan

.PHONY: destroy
destroy:
	terraform destroy -var-file ./variables/local.tfvars -auto-approve

.PHONY: validate
validate:
	terraform validate

.PHONY: refresh
refresh:
	terraform refresh -lock=false -var-file=./variables/local.tfvars

.PHONY: graph
graph:
	terraform graph | dot -Tpdf > terraform-graph/graph.pdf