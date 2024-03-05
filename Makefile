setup:
	ansible-playbook playbook.yml -i inventory.ini -vv

ansible-roles:
	ansible-galaxy install -r requirements.yml

