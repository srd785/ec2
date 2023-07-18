#!/bin/bash/

#Installing the packages
sudo snap install docker 
sudo snap install terraform
sudo snap install helm

chmod +x helm.sh k8s.yaml terra.tf

sudo sh helm.sh
sudo kubectl apply -f k8s.yaml
sudo terraform init
sudo terraform apply --auto-approve
