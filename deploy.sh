#!/bin/bash

set -e

platform_namespace="${platform_namespace:-domino-platform}"
JOB="job.yaml"
kubectl apply -n ${platform_namespace} -f ${JOB}