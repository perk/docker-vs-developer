# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.synced_folder ".", "/docker"

   config.vm.provider :virtualbox do |vb|
     #vb.gui = true

     vb.customize ["modifyvm", :id, "--memory", "2048"]
     vb.customize ["modifyvm", :id, "--cpus", "2"]
     vb.customize ["modifyvm", :id, "--ioapic", "on"]
   end

  config.vm.provision :shell, :path => "vagrant.bootstrap.sh"
end
