dev-apply:
	git pull
	terraform init -backend-config=enviroments/dev/state.tfvars
	terraform apply -auto-approve -var-file=enviroments/dev/main.tfvars

dev-destroy:
	git pull
	terraform init -backend-config=enviroments/dev/state.tfvars
	terraform destroy -auto-approve -var-file=enviroments/dev/main.tfvars

prod-apply:
	git pull
	terraform init -backend-config=enviroments/prod/state.tfvars
	terraform apply -auto-approve -var-file=enviroments/prod/main.tfvars

prod-destroy:
	git pull
	terraform init -backend-config=enviroments/prod/state.tfvars
	terraform destroy -auto-approve -var-file=enviroments/prod/main.tfvars


