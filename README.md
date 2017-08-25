# ekleipsis-vagrant
This repo is primarily a container for the Vagrantfile and bootstrapping scripts used to spin up a virtual machine for development purposes. 

## Setup Process
* Install Virtualbox: http://download.virtualbox.org/virtualbox/5.1.26/VirtualBox-5.1.26-117224-Win.exe

* Restart your machine. (Sometimes Vagrant doesn't install correctly if you don't do this)

* Install Vagrant: https://releases.hashicorp.com/vagrant/1.9.8/vagrant_1.9.8_x86_64.msi

* Restart your machine. (Might not be required, but better safe than sorry)

* Clone this repo(ekleipsis-vagrant) down to your local machine where you'd like to work.

* Open a command prompt (or git bash) and navigate to the folder where you cloned the repo.

* Run the command `vagrant up`

* Congratulations. If that finished without any errors then your dev environment is set up.

## Workflow
* To work on a project clone its repo down inside of this project. For example you could clone down the sample project located here. https://github.com/2ajoyce/ekleipsis-hello-world

* To run the app run the following commands. 

* `vagrant up`

* `vagrant ssh`

* `ng serve -host 192.168.33.10`

* Navigate to `http://192.168.33.10:4200/` in your browser. 

* To see changes in the app you have to stop the ng serve and restart it. To date I have not figured out how to get it to sense when to reload from inside of the vm. 

## Editing
This dev environment was created to support an Angular 2 project that uses Firebase as its database/backend.

Changes made inside of this cloned repo are mirrored on the vm so that you can edit the projects locally in Windows using your editor of choice, and serve the project from the vm. That way you don't have to hassle with installing Angular2 and its various dependancies. If you already have Angular2 installed and want to serve the project from Windows that should work also. Just make sure that you check it through the other route periodically to ensure there aren't any differences.

