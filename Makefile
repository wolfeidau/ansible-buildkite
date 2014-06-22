deps:
	sudo apt-get update -qq
	sudo apt-get install -qq python-apt python-pycurl
	pip install ansible

smoketest:
	echo localhost > inventory
	ansible-playbook -i inventory --syntax-check --list-tasks role.yml
