all:
	helm package unconfigured
	helm package allinone
	helm package azure-sc
	helm package azure-pvc
	helm repo index --url https://opensquiggly.github.io/helm-charts .

checkin:
	git add -A
	git commit -m "More updates to helm charts"
	git push origin main

helm-update:
	helm repo update
