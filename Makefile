.DEFAULT_GOAL := local

.PHONY: provision vbox local

provision:
	ansible-playbook \
		--inventory inventory.yml \
		playbook.yml

vbox:
	ansible-playbook \
		--inventory inventory-vbox.yml \
		playbook.yml

local:
	ansible-playbook \
		--inventory inventory-local.yml \
		playbook.yml

.venv:
	python3 -m venv .venv
