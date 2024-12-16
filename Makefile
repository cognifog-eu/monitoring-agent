install:
	helm upgrade -i  monitoring-agent monitoring-agent/ -f values.yaml -n cognifog-dev

uninstall:
	helm uninstall monitoring-agent -n cognifog-dev

template:
	helm template --name-template monit-agent \
	-f values-cognifog-intra-testbed.yaml monitoring-agent/ \
	-n cognifog-dev \
	> jenkins/manifests.yaml