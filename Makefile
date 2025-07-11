.PHONY: all deploy remove status lint update

all: deploy

update: deploy

deploy:
	ANSIBLE_ROLES_PATH=roles ansible-playbook playbooks/deploy.yml -i inventory/hosts.yml

remove:
	ANSIBLE_ROLES_PATH=roles ansible-playbook playbooks/remove.yml -i inventory/hosts.yml

status:
	ANSIBLE_ROLES_PATH=roles ansible-playbook playbooks/status.yml -i inventory/hosts.yml

lint:
	ansible-lint