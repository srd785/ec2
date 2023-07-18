#!/bin/bash/
sh helm.sh

kubectl apply -f k8s.yaml

terraform init
terraform apply --auto-approve
