#!/bin/bash
packer build manifest11.json  #Drupal
#packer build -var "packagename=wordpress" manifest11.json
terraform init
terraform plan
terraform apply -auto-approve 