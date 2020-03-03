#!bin/bash
######################################################################################################
#   Install placeh -tomcat (Ubuntu 18)                                                               #
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

# Create your repository directory
	      output " "
    	  output "Create your repository directory"
    	  output " "
        sleep 3

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
