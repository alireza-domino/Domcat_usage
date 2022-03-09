platform_namespace="${platform_namespace:-domino-platform}"
kubectl delete -n ${platform_namespace} job domcat