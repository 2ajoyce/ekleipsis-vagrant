# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

    # Provision the box
    config.vm.provision :shell, path: "bootstrap.sh"
    config.vm.provision :shell, path: "heroku_login.exp"
    config.vm.provision :shell, path: "project_setup.sh"
    # config.vm.provision :shell, path: "heroku_projectInit.exp"
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

    # Define the Vagrant Push for Heroku
    config.push.define "heroku" do |push|
      push.app = "ekleipsis-hello-world"
      push.dir = "ekleipsis-hello-world"
    end

    config.vm.provision :shell, inline: "echo \"cd ../../var/www\" >> /home/vagrant/.bashrc"
end
