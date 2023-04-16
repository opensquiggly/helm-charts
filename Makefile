all:
	helm package unconfigured
	helm repo index --url https://opensquiggly.github.io/helm-charts .
