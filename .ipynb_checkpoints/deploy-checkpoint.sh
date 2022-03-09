#!/bin/bash

set -e

platform_namespace="${platform_namespace:-domino-platform}"

mkdir -p domcat-aws-credentials
printf "${AWS_ACCESS_KEY_ID}" > domcat-aws-credentials/AWS_ACCESS_KEY_ID
printf "${AWS_SECRET_ACCESS_KEY}" > domcat-aws-credentials/AWS_SECRET_ACCESS_KEY
unset AWS_SECRET_ACCESS_KEY
unset AWS_ACCESS_KEY_ID
kubectl create secret generic -n ${platform_namespace} domcat-aws-credentials --from-file=domcat-aws-credentials || true
rm -rf domcat-aws-credentials

if [ "${1}" == "--root" ]
then
  JOB="job-root.yaml"
else
  JOB="job.yaml"
fi

kubectl apply -n ${platform_namespace} -f ${JOB}
