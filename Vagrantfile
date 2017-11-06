# -*- mode: ruby -*-

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :ansible_local do |ansible|
    ansible.install = true
    ansible.playbook = "ansible/playbook.yml"
  end
   config.vm.network "forwarded_port", guest: 3306, host: 3307
   config.vm.network "private_network", ip: "192.168.11.100"
end