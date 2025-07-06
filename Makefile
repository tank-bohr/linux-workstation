.DEFAULT_GOAL := provision

.PHONY: provision
provision:
	ansible-playbook -i inventory.yml playbook.yml
