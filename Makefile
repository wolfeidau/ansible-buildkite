deps:
	sudo apt-get update -qq
	sudo apt-get install -qq python-apt python-pycurl
	pip install ansible

smoketest:
	ansible-playbook --syntax-check --list-tasks role.yml
