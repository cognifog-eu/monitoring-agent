helm-template:
	helm template --name-template monit-agent \
	-f values-cognifog-intra-testbed.yaml monitoring-agent/ \
	-n cognifog-dev \
	> jenkins/manifests.yaml