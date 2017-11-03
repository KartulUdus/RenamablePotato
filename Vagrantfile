# -*- mode: ruby -*-

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :ansible_local do |ansible|
    ansible.install = true
    ansible.playbook = "ansible/playbook.yml"
  end
   config.vm.network "forwarded_port", guest: 4420, host: 4420
   config.vm.network "forwarded_port", guest: 3306, host: 4200

end