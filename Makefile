.PHONY: tf-init
tf-init:
	mkdir -p terraform && \
	cd terraform && \
	terraform init