#!bin/bash
#####################################################
#   Install placeh mirror repository (Ubuntu 18)    #
#####################################################
    output() {
	printf "\E[0;33;40m"
        echo $1
        printf "\E[0m"
    }

    displayErr() {
        echo
        echo $1;
        echo
        exit 1;
    }
	
	# Update package and Upgrade Ubuntu
        output " "
        output "Updating system and installing required packages."
        output " "
        sleep 3
        
        sudo apt-get -y update 
        sudo apt-get -y upgrade
        sudo apt-get -y autoremove
        
	# Installing crypto dependencies and placeh node
	output " "
        output "Installing crypto dependencies and placeh node"
        output " "
        sleep 3

	sudo add-apt-repository -y ppa:bitcoin/bitcoin
	sudo apt-get -y update

	sudo apt-get -y install libboost-all-dev
	sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev 	bsdmainutils python3
	sudo apt-get -y install libdb4.8-dev libdb4.8++-dev
	sudo apt-get -y install libminiupnpc-dev
	sudo apt-get -y install libzmq3-dev
	sleep 3

	wget https://www.placeh.io/files/Placeh_2.0.30.5_Ubuntu18.tar.gz
	gunzip Placeh_2.0.30.5_Ubuntu18.tar.gz
	tar xvf Placeh_2.0.30.5_Ubuntu18.tar

  # Run Placeholders Node in the background
	output " "
    	output "Run Placeholders Node in the background"
    	output " "
        sleep 3

	cd Placeholders-X16R/
	chmod +x *
	./placehd -server -daemon -listen=1 prune=2200
	sleep 3
  
  # Install aria2
	output " "
    	output "Install aria2"
    	output " "
        sleep 3

	sudo apt install aria2

  # Open port for incoming / outgoing traffic 8080
	output " "
    	output "Open port for incoming / outgoing traffic 8080"
    	output " "
        sleep 3

	sudo ufw enable
	sudo ufw allow ssh
	sudo ufw allow 8080
	
  # Create your repository directory
	output " "
    	output "Create your repository directory"
    	output " "
        sleep 3

	sudo -i
