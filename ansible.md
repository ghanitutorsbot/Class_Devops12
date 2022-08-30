
Ansible Setup Box Creation


-------------------------------------------------------------------------------------------
Vagrantfile

Vagrant.configure("2") do |config|
	config.vm.define "ansible" do |ansible|
	ansible.vm.box = "ubuntu/focal64"
	ansible.vm.network "private_network", ip: "192.168.20.51"
	ansible.vm.hostname = "ansible"
	end
	config.vm.define "node1" do |node1|
	node1.vm.box = "ubuntu/focal64"
	node1.vm.network "private_network", ip: "192.168.20.52"
	node1.vm.hostname = "node1"
	end
end
-------------------------------------------------------------------------------------------
Vagrant login

Gitbash
    vagrant ssh ansible

Moboxtream
Step1:
    vagrant ssh-config > vagrant-ssh
Step2:
    ssh -F vagrant-ssh ansible
    ssh -F vagrant-ssh node1

-------------------------------------------------------------------------------------------
Installation and Verify the connection

Step 1: Installation on ansible machine

	sudo apt-get update
	sudo apt-get install software-properties-common
	sudo apt-add-repository --yes --update ppa:ansible/ansible
	sudo apt-get install ansible

Step 2: Key generation
    ssh-keygen

Step 3: (Copy)
    cd .ssh
    copy id_rsa.pub content

Step 4: In Node Machine (Paste)
    
    sudo -s
    cd /root
    cd .ssh
    vi authorized keys
    Paste the public key

    //ssh-copy-id node1@192.168.20.52

Step 5: In Ansible Machine

    create a file and add ip address of node machine

    touch node
    Edit file "node" and add ip address - Example 192.168.20.52
    save it

Step 6: Verify connection in ansible machine

    ansible -i node -u root -m ping all

-------------------------------------------------------------------------------------------

Backup ansible folder

Command:
    cp -R /etc/ansible myansible

-------------------------------------------------------------------------------------------

Go to the backup folder

1. Open hosts file and add all ip address of node machine
2. configure ansible.cfg path of hosts to current host file
        ansible-config init --disabled > ansible.cfg
        vi ansible.cfg
3. change inventory=hosts
-------------------------------------------------------------------------------------------
Create Roles  under roles folder

Step1: Manual

    Steps:
    
        cd roles
        mkdir dev
        cd dev
        mkdir tasks
        cd tasks

Steps2: Automatic
        Command :  ansible-galaxy init rolename
        
        
    
------------------------------------------------------------------------------------------  Edit main.yml
        vi main.yml


- name: "update ubuntu"
  apt: update_cache=yes force_apt_get=yes cache_valid_time=3600
- name: "Installing git"
  apt:
    name: git
    state: present

- name: "Installing Maven"
  apt:
    name: maven
    state: present

-------------------------------------------------------------------------------------------

In home ansible folder

Create Playbook.yml
- hosts: all
  roles:
     - dev
-------------------------------------------------------------------------------------------
Verify Playbook is running or not

command: ansible-playbook -u root playbook.yml

-------------------------------------------------------------------------------------------







