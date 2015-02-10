#!/bin/bash

echo "Beginning Provisioning Run"
date

if [ -n "$(which java | grep /usr/bin/java)" ]
then
	echo "Found Java.."
	echo "$(java -version)"
else
	echo "Installing Java.."
	tar -xf /vagrant/usbstick/jdk-7u75-linux-x64.gz -C /vagrant/usbstick
	ln -sf /vagrant/usbstick/jdk1.7.0_75/bin/java /usr/bin/java
fi

if [ -n "$(grep "JAVA_HOME" /etc/bash.bashrc)" ]
then 
	echo "JAVA_HOME found in /etc/bash.bashrc"
else
	echo "Adding JAVA_HOME to /etc/bash.bashrc.."
	echo "export JAVA_HOME=/vagrant/usbstick/jdk1.7.0_75" >> /etc/bash.bashrc	
fi

export JAVA_HOME=/vagrant/usbstick/jdk1.7.0_75

if [ -n "$(which mvn | grep /usr/bin/mvn)" ]
then
	echo "Found Maven.."
	echo "$(mvn --version)"
else
	echo "Installing Maven.."
	tar -xf /vagrant/usbstick/apache-maven-3.2.5-bin.tar.gz -C /vagrant/usbstick
	ln -sf /vagrant/usbstick/apache-maven-3.2.5/bin/mvn /usr/bin/mvn
fi

echo "Provisioning Run Complete"
date
