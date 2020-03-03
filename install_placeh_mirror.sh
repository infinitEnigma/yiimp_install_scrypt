
######################################################################################################
# Author: infinitEnigma (https://github.com/infinitEnigma/Placeholders-X16R/placeh_install_scrypt.sh)#
# Web:                                                                                               #
#                                                                                                    #
# Program:                                                                                           #
#   Install placeh mirror repository (AWS Ubuntu 18)                                                 #
######################################################################################################
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
	      cd /root/
	      mkdir repository

  # Grab and install the packaged tomcat
	      output " "
    	  output "Grab and install the packaged tomcat"
    	  output " "
        sleep 3

	      wget https://www.placeh.io/files/apache-tomcat-8.5.51.tar.gz
	      gunzip apache-tomcat-8.5.51.tar.gz
	      tar xvf apache-tomcat-8.5.51.tar
  
  # Make sure you have Java installed
	      output " "
    	  output "Make sure you have Java installed"
    	  output " "
        sleep 3

	      apt update
	      apt install -y openjdk-8-jdk
  
  # Run Repository
	      output " "
    	  output "Run Repository"
    	  output " "
        sleep 3

	      cd apache-tomcat-8.5.51/bin
	      sh startup.sh
	      sleep 3

  # Test your installation
	      output " "
    	  output "Test your installation"
    	  output " "
        sleep 3

	      curl ifconfig.me
  
  # Open a browser, and visit:
	      output " "
    	  output "Open a browser, and visit:"
    	  output "http://my.ip.address:8080/raw/FGx2aebnUA64fnpWLouonQsu6E6oy4gMga"
	      output "change my.ip.address to match your ip address"
        output " "
	      output "*You should see an image of the word 'peanut butter'"
        sleep 3


