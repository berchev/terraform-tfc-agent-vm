#!/usr/bin/env bash

#Debug mode enabled 
#set -x


# Install specific Terraform version. Desired Version -> format x.y.z
TERRAFORM_VERSION="0.14.10"

[ -f "/usr/local/bin/terraform" ] || {
  pushd /usr/local/bin
  TERRAFORM_URL=$(curl -sL https://releases.hashicorp.com/terraform/index.json | jq -r '.versions[].builds[].url' | egrep 'terraform_[0-9]\.[0-9]{1,2}\.[0-9]{1,2}_linux.*amd64' | grep ${TERRAFORM_VERSION})
  curl -o terraform.zip ${TERRAFORM_URL}
  unzip terraform.zip
  rm -f terraform.zip
  popd
}
