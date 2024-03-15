VAULT_PASSWORD_FILE=/tmp/ansible-vault-password 

setup:
	ansible-playbook --vault-password-file $(VAULT_PASSWORD_FILE) setup.yml -i inventory.ini -vv

setup-db:
	ansible-playbook --vault-password-file $(VAULT_PASSWORD_FILE) setup-db.yml -i inventory.ini -vv

deploy:
	ansible-playbook --vault-password-file $(VAULT_PASSWORD_FILE) deploy.yml -i inventory.ini -vv

ansible-install:
	ansible-galaxy install -r requirements.yml

edit-vault:
	EDITOR=nvim ansible-vault edit --vault-password-file $(VAULT_PASSWORD_FILE) ./group_vars/all/vault.yml
