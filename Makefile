deps: requirements.yml
	ansible-galaxy install -r requirements.yml

install:
	ansible-playbook -K playbooks/install-$(shell hostname).yml

debug:
	ansible-playbook -vvv -K playbooks/install-$(shell hostname).yml
