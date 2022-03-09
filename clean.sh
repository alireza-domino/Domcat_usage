platform_namespace="${platform_namespace:-domino-platform}"
kubectl delete -n ${platform_namespace} job domcat
kubectl delete deployment domcat-output -n $platform_namespace
kubectl delete pvc domcat-output -n $platform_namespace