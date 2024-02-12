.PHONY: init
init:
	mkdir -p terraform && \
	cp Makefile terraform/ && \
	cd terraform && \
	mkdir modules variables terraform-graph && \
	cd variables && touch local.tfvars && cd .. && \
	touch providers.tf variables.tf main.tf outputs.tf && \
	terraform init

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