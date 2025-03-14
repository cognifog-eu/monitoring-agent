install:
	helm upgrade -i  monitoring-agent monitoring-agent/ -f values.yaml

uninstall:
	helm uninstall monitoring-agent

template:
	helm template --name-template monit-agent -n cognifog-dev \
	-f values-cognifog-intra-testbed.yaml monitoring-agent/ \
	> jenkins/manifests.yaml