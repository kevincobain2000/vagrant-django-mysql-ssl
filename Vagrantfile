# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
VAGRANTFILE_HOST_ADDRESS = "192.168.36.12"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Provision
  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.hostname = "myproject"

  config.vm.network :forwarded_port, host: 80, guest: 80, auto_correct: true
  config.vm.network :forwarded_port, guest: 3306, host: 3306, auto_correct: true
  config.vm.network :private_network, ip: VAGRANTFILE_HOST_ADDRESS

  # Shared folder
  config.vm.synced_folder "vagrant/", "/home/vagrant", create: true

  config.vm.provision :shell, inline: "echo Installing pip Requirements"
  config.vm.provision :shell, inline: "sudo pip install -r /vagrant/requirements.txt"
  config.vm.provision :shell, inline: "/vagrant/myproject/database.sh"
  config.vm.provision :shell, inline: "/vagrant/myproject/server.sh &"
  config.vm.provision :shell, inline: "echo Starting Server"
  config.vm.provision :shell, inline: "echo Good job, now enjoy your new vbox: https://192.168.36.12 or https://myproject.me"
end