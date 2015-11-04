# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 9966, host: 9966

  #config.vm.provider "virtualbox" do |v|
  #  v.name = "spring-petclinic"
  #  v.customize ["modifyvm", :id, "--memory", 1024]
  #  v.customize ["modifyvm", :id, "--cpus", 4]
  #end

  config.vm.provision "shell",
      inline: "/vagrant/./provision.sh"

#  config.vm.provision "chef_solo" do |chef|

#     chef.add_recipe "java::default"
#     chef.add_recipe "maven"
#     #chef.add_recipe "petclinic"

#     chef.json.merge!(JSON.parse(File.read("solo.json")))
#  end

end
