all:
	helm package unconfigured
	helm package allinone
	helm package azure-dns-secret
	helm package azure-sc
	helm package azure-pvc
	helm package azure-allinone
	helm package linode-allinone
	helm repo index --url https://opensquiggly.github.io/helm-charts .

checkin:
	git add -A
	git commit -m "More updates to helm charts"
	git push origin main

helm-update:
	helm repo update
