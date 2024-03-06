setup:
	ansible-playbook setup.yml -i inventory.ini -vv

ansible-roles:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook deploy.yml -i inventory.ini -vv

