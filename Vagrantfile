Vagrant.configure("2") do |config|
  config.vm.box = "berchev/bionic64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end
  # Adding .terraformrc file from Host to Guest for authentication to TF Cloud
  config.vm.provision :file, source: "~/.terraformrc", destination: "/home/vagrant/.terraformrc"
  config.vm.provision :file, source: "~/Dropbox/google-cloud/sup-eng-eu-17bd96d873d1.json", destination: "/home/vagrant/sup-eng-eu-17bd96d873d1.json"
  config.vm.provision :shell, path: "scripts/terraform.sh"
  config.vm.provision :shell, path: "scripts/tfc_agent.sh"
end