platform_namespace="${platform_namespace:-domino-platform}"
kubectl delete -n ${platform_namespace} job domcat
kubectl delete -n ${platform_namespace} secret domcat-aws-credentials
