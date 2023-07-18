#!/bin/bash
#Add Harness helm chart repo to your local helm registry
helm repo add harness-delegate https://app.harness.io/storage/harness-download/delegate-helm-chart/

helm repo update harness-delegate

#Now we are ready to install the delegate
helm upgrade -i helm-delegate --namespace harness-delegate-helm --create-namespace \
  harness-delegate/harness-delegate-helm \
  --set delegateName=helm-delegate \
  --set accountId=LZyeo82AR5KUT0J6P2mtZg \
  --set delegateToken=MzQ4NDUyYjc3MzlhM2Q5ODUwOGFlZDkyMGQxOTBiM2I= \
  --set managerEndpoint=https://app.harness.io/gratis \
  --set delegateDockerImage=harness/delegate:23.06.79707 \
  --set replicas=1 --set upgrader.enabled=false

