# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial64"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.network "forwarded_port", guest: 4200, host: 5200
    config.vm.network "forwarded_port", guest: 5000, host: 5000
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

    # Provision the box
    config.vm.provision :shell, path: "bootstrap.sh"
    config.vm.provision :shell, path: "heroku_login.exp"
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

    config.vm.provision :shell, inline: "echo \"cd ../../var/www\" >> /home/ubuntu/.bashrc"
end
