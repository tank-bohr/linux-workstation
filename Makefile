.DEFAULT_GOAL := provision

.PHONY: provision
provision:
	ansible-playbook \
		--inventory inventory.yml \
		--vault-password-file .vault-password \
		playbook.yml
