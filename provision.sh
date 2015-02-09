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

	if ! grep --quiet "jdk1.7.0_75" ~/.bashrc
	then		
		echo "export JAVA_HOME=/vagrant/usbstick/jdk1.7.0_75" >> ~/.bashrc
	fi

	export JAVA_HOME=/vagrant/usbstick/jdk1.7.0_75
fi

if [ -n "$(which mvn | grep /usr/bin/mvn)" ]
then
	echo "Found Maven.."
	echo "$(mvn --version)"
else
	echo "Installing Maven.."
	tar -xf /vagrant/usbstick/apache-maven-3.2.5-bin.tar.gz -C /vagrant/usbstick
	ln -sf /vagrant/usbstick/apache-maven-3.2.5/bin/mvn /usr/bin/mvn
fi

cd /vagrant

# - these are not technically provisioning steps
# - but for the purposes of the demo it will save some time
mvn -f pom_provision_demo.xml clean
mvn -f pom_provision_demo.xml compile
mvn -f pom_provision_demo.xml test
mvn -f pom_provision_demo.xml package

echo "Provisioning Run Complete"
date
