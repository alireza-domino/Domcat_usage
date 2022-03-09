platform_namespace="${platform_namespace:-domino-platform}"
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
kubectl delete -n ${platform_namespace} job domcat
kubectl delete -n ${platform_namespace} secret domcat-aws-credentials
