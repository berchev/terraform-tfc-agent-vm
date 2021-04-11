#!/usr/bin/env bash

#Debug mode enabled 
#set -x


# Install specific TFC AGENT version. Desired Version -> format x.y.z
TFC_AGENT_VERSION="0.1.10"

[ -d "/opt/tfc_agent" ] || {
  mkdir /opt/tfc_agent
  pushd /opt/tfc_agent
  TERRAFORM_AGENT_URL=$(curl -sL https://releases.hashicorp.com/tfc-agent/index.json | jq -r '.versions[].builds[].url' | egrep 'tfc-agent_[0-9]\.[0-9]{1,2}\.[0-9]{1,2}' | grep ${TFC_AGENT_VERSION})
  curl -o tfc_agent.zip ${TERRAFORM_AGENT_URL}
  unzip tfc_agent.zip
  rm -f tfc_agent.zip
  popd
}