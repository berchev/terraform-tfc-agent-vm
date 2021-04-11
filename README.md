# terraform-tfc-agent-vm

## From TF Cloud ##

- create agent pool
- generate token

## From Vagrant VM ##
- clone the repo
- `cd terraform-tfc-agent-vm`
- edit Terraform version and TFC agent version if needed (`vim scripts/terraform.sh` and `scripts/tfc_agent.sh`)
- `$ vagrant up --provider virtualbox`
- start agent

```
$ export TFC_AGENT_TOKEN='xxxxxxxxxxxxxx.atlasv1.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
$ export TFC_AGENT_NAME=tfc_agent
$ export TFC_AGENT_LOG_LEVEL=TRACE
$ cd /opt/tfc_agent
$ ./tfc-agent | tee /vagrant/agent_trace.log
```
## back to TF Cloud ##
- create workspace
- set agent mode and choose the previously created agent pool
