deps: requirements.yml
	poetry run ansible-galaxy install -r requirements.yml

install: deps
	poetry run ansible-playbook -K playbooks/install-$(shell hostname).yml

debug: deps
	poetry run ansible-playbook -vvv -K playbooks/install-$(shell hostname).yml
