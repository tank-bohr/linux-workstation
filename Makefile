.DEFAULT_GOAL := local

.PHONY: provision vbox local

provision:
	ansible-playbook \
		--inventory inventory.yml \
		--vault-password-file .vault-password \
		playbook.yml

vbox:
	ansible-playbook \
		--inventory inventory-vbox.yml \
		--vault-password-file .vault-password \
		playbook.yml

local:
	ansible-playbook \
		--inventory inventory-local.yml \
		--vault-password-file .vault-password \
		playbook.yml

.venv:
	python3 -m venv .venv
