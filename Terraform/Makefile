.PHONY: init
init:
ifeq ($(strip $(provider)),)
	echo "Error: Please specify a provider name. Example: make init name=azurerm OR google OR aws"
else
	mkdir -p ../terraform && \
	mkdir -p ../terraform/modules ../terraform/variables ../terraform/terraform-graph && \
	cp Makefile ../terraform/ && \
	cp -r terraform-templates/base/$(provider)/* ../terraform/ && \
	cp -r terraform-templates/variables/* ../terraform/variables/ && \
	cd ../terraform && terraform init && cd ../Terraform && \
	mkdir -p ../terraform/.terraform/custom-modules && \
	cp -r terraform-templates/modules/* ../terraform/.terraform/custom-modules/ && \
	code ../terraform
	rm -rf ../Terraform
endif

.PHONY: module
module:
ifeq ($(strip $(module)),)
	echo "Error: Please specify a module name. Example: make module name=my_module"
else
	mkdir -p modules/$(module) && \
	cp -r .terraform/custom-modules/* modules/$(module)/ && \
	echo "Created module in 'modules/$(module)' with main.tf, variables.tf, and outputs.tf"
endif

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

MAKEFLAGS += --silent