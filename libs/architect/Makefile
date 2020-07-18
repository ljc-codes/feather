help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

bash-setup-gcp-infra:
	chmod +rwx ./build.sh
	./build.sh > infra_execution_$$(date +%s).log

tf-gcp-infra-init: 
	cd terraform/ && terraform init

tf-gcp-infra-fmt:
	cd terraform/ && terraform fmt

tf-gcp-infra-plan:
	cd terraform/ && terraform plan -var-file="variables.tfvars"

tf-gcp-infra-apply:
	cd terraform/ && terraform apply -var-file="variables.tfvars" --auto-approve

tf-gcp-infra-destroy:
	cd terraform/ && terraform destroy -var-file="variables.tfvars"