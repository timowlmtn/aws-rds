create-dev-snapshot:
	terraform init aws/postgres
	terraform apply -var-file="../vpc/aws/base/vars.tfvars" -auto-approve aws/postgres

clean:
	terraform destroy -var-file="../vpc/aws/base/vars.tfvars" aws/postgres

refresh:
	terraform refresh -var-file="../vpc/aws/base/vars.tfvars" aws/postgres