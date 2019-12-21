create-dev-snapshot:
	terraform init aws/postgres
	terraform apply -var-file="../vpc/aws/base/vars.tfvars" -auto-approve aws/postgres

clean:
	terraform destroy -var-file="../vpc/aws/base/vars.tfvars" aws/postgres

refresh:
	terraform refresh -var-file="../vpc/aws/base/vars.tfvars" aws/postgres

create-s3-policy:
	src/bash/create_s3_policy.sh

create-s3-role:
	src/bash/create_s3_role.sh

attach-s3-policy-role:
	src/bash/attach_s3_policy_role.sh

add-role-postgres:
	src/bash/add_role_postgres.sh

