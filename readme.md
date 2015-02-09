# Spring PetClinic Sample Application

## What does it look like?
-spring-petclinic has been deployed here on cloudfoundry: http://demo-spring-petclinic.cfapps.io/


## Understanding the Spring Petclinic application with a few diagrams
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

## Running petclinic locally
```
	git clone https://github.com/SpringSource/spring-petclinic.git
	mvn tomcat7:run
```

You can then access petclinic here: http://localhost:9966/petclinic/

## In case you find a bug/suggested improvement for Spring Petclinic
Our issue tracker is available here: https://github.com/SpringSource/spring-petclinic/issues

## Working with Petclinic in Eclipse/STS

### prerequisites
The following items should be installed in your system:
* Maven 3 (http://www.sonatype.com/books/mvnref-book/reference/installation.html)
* git command line tool (https://help.github.com/articles/set-up-git)
* Eclipse with the m2e plugin (m2e is installed by default when using the STS (http://www.springsource.org/sts) distribution of Eclipse)

Note: when m2e is available, there is an m2 icon in Help -> About dialog.
If m2e is not there, just follow the install process here: http://eclipse.org/m2e/download/


### Steps:

1) In the command line
```
git clone https://github.com/SpringSource/spring-petclinic.git
```
2) Inside Eclipse
```
File -> Import -> Maven -> Existing Maven project
```


## Looking for something in particular?

<table>
  <tr>
    <th width="300px">Inside the 'Web' layer</th><th width="300px">Files</th>
  </tr>
  <tr>
    <td>Spring MVC- Atom integration</td>
    <td>
      <a href="/src/main/java/org/springframework/samples/petclinic/web/VetsAtomView.java">VetsAtomView.java</a>
      <a href="/src/main/resources/spring/mvc-view-config.xml">mvc-view-config.xml</a>
    </td>
  </tr>
  <tr>
    <td>Spring MVC - XML integration</td>
    <td><a href="/src/main/resources/spring/mvc-view-config.xml">mvc-view-config.xml</a></td>
  </tr>
  <tr>
    <td>Spring MVC - ContentNegotiatingViewResolver</td>
    <td><a href="/src/main/resources/spring/mvc-view-config.xml">mvc-view-config.xml</a></td>
  </tr>
  <tr>
    <td>Spring MVC Test Framework</td>
    <td><a href="/src/test/java/org/springframework/samples/petclinic/web/VisitsViewTests.java">VisitsViewTest.java</a></td>
  </tr>
  <tr>
    <td>JSP custom tags</td>
    <td>
      <a href="/src/main/webapp/WEB-INF/tags">WEB-INF/tags</a>
      <a href="/src/main/webapp/WEB-INF/jsp/owners/createOrUpdateOwnerForm.jsp">createOrUpdateOwnerForm.jsp</a></td>
  </tr>
  <tr>
    <td>webjars</td>
    <td>
      <a href="/pom.xml">webjars declaration inside pom.xml</a> <br />
      <a href="/src/main/resources/spring/mvc-core-config.xml#L24">Resource mapping in Spring configuration</a> <br />
      <a href="/src/main/webapp/WEB-INF/jsp/fragments/headTag.jsp#L12">sample usage in JSP</a></td>
    </td>
  </tr>
  <tr>
    <td>Dandelion-datatables</td>
    <td>
      <a href="/src/main/webapp/WEB-INF/jsp/owners/ownersList.jsp">ownersList.jsp</a>
      <a href="/src/main/webapp/WEB-INF/jsp/vets/vetList.jsp">vetList.jsp</a>
      <a href="/src/main/webapp/WEB-INF/web.xml">web.xml</a>
      <a href="/src/main/resources/dandelion/datatables/datatables.properties">datatables.properties</a>
   </td>
  </tr>
  <tr>
    <td>Thymeleaf branch</td>
    <td>
      <a href="http://www.thymeleaf.org/petclinic.html">See here</a></td>
  </tr>
  <tr>
    <td>Branch using GemFire and Spring Data GemFire instead of ehcache (thanks Bijoy Choudhury)</td>
    <td>
      <a href="https://github.com/bijoych/spring-petclinic-gemfire">See here</a></td>
  </tr>
</table>

<table>
  <tr>
    <th width="300px">'Service' and 'Repository' layers</th><th width="300px">Files</th>
  </tr>
  <tr>
    <td>Transactions</td>
    <td>
      <a href="/src/main/resources/spring/business-config.xml">business-config.xml</a>
       <a href="/src/main/java/org/springframework/samples/petclinic/service/ClinicServiceImpl.java">ClinicServiceImpl.java</a>
    </td>
  </tr>
  <tr>
    <td>Cache</td>
      <td>
      <a href="/src/main/resources/spring/tools-config.xml">tools-config.xml</a>
       <a href="/src/main/java/org/springframework/samples/petclinic/service/ClinicServiceImpl.java">ClinicServiceImpl.java</a>
    </td>
  </tr>
  <tr>
    <td>Bean Profiles</td>
      <td>
      <a href="/src/main/resources/spring/business-config.xml">business-config.xml</a>
       <a href="/src/test/java/org/springframework/samples/petclinic/service/ClinicServiceJdbcTests.java">ClinicServiceJdbcTests.java</a>
       <a href="/src/main/webapp/WEB-INF/web.xml">web.xml</a>
    </td>
  </tr>
  <tr>
    <td>JdbcTemplate</td>
    <td>
      <a href="/src/main/resources/spring/business-config.xml">business-config.xml</a>
      <a href="/src/main/java/org/springframework/samples/petclinic/repository/jdbc">jdbc folder</a></td>
  </tr>
  <tr>
    <td>JPA</td>
    <td>
      <a href="/src/main/resources/spring/business-config.xml">business-config.xml</a>
      <a href="/src/main/java/org/springframework/samples/petclinic/repository/jpa">jpa folder</a></td>
  </tr>
  <tr>
    <td>Spring Data JPA</td>
    <td>
      <a href="/src/main/resources/spring/business-config.xml">business-config.xml</a>
      <a href="/src/main/java/org/springframework/samples/petclinic/repository/springdatajpa">springdatajpa folder</a></td>
  </tr>
</table>

<table>
  <tr>
    <th width="300px">Others</th><th width="300px">Files</th>
  </tr>
  <tr>
    <td>Gradle branch</td>
    <td>
      <a href="https://github.com/whimet/spring-petclinic">See here</a></td>
  </tr>
</table>


## Interaction with other open source projects

One of the best parts about working on the Spring Petclinic application is that we have the opportunity to work in direct contact with many Open Source projects. We found some bugs/suggested improvements on various topics such as Spring, Spring Data, Bean Validation and even Eclipse! In many cases, they've been fixed/implemented in just a few days.
Here is a list of them:

<table>
  <tr>
    <th width="300px">Name</th>
    <th width="300px"> Issue </th>
  </tr>

  <tr>
    <td>Spring JDBC: simplify usage of NamedParameterJdbcTemplate</td>
    <td> <a href="https://jira.springsource.org/browse/SPR-10256"> SPR-10256</a> and <a href="https://jira.springsource.org/browse/SPR-10257"> SPR-10257</a> </td>
  </tr>
  <tr>
    <td>Bean Validation / Hibernate Validator: simplify Maven dependencies and backward compatibility</td>
    <td>
      <a href="https://hibernate.atlassian.net/browse/HV-790"> HV-790</a> and <a href="https://hibernate.atlassian.net/browse/HV-792"> HV-792</a>
      </td>
  </tr>
  <tr>
    <td>Spring Data: provide more flexibility when working with JPQL queries</td>
    <td>
      <a href="https://jira.springsource.org/browse/DATAJPA-292"> DATAJPA-292</a>
      </td>
  </tr>  
  <tr>
    <td>Eclipse: validation bug when working with .tag/.tagx files (has only been fixed for Eclipse 4.3 (Kepler)). <a href="https://github.com/spring-projects/spring-petclinic/issues/14">See here for more details.</a></td>
    <td>
      <a href="https://issuetracker.springsource.com/browse/STS-3294"> STS-3294</a>
    </td>
  </tr>
</table>

## SLS "Spring PetClinic" Vagrant Demo

### Preparation / Installation

VirtualBox, Git, and Vagrant will each need to be installed in order to run this demo (and any demo we have involving Vagrant). The installation process will take around 20 minutes to complete.

** Note: Vagrant should be installed _after_ VirtualBox **

#### 1. VirtualBox

VirtualBox assists in creating and managing virtual machines on your local system.

Downloads and instructions can be found at: https://www.virtualbox.org/

#### 2. Git

Git is a source control management system.

Downloads and instructions can be found at: http://git-scm.com/

**Note for Windows Users**: During Git installation, an option dialog will be presented to allow you to decide how Git integrates with the Windows Command Prompt. Choose the second option, entitled "Run Git and included Unix tools from the Windows Command Prompt"

#### 3. Vagrant

Vagrant is a tool for provisioning and managing local virtualized development environments. Vagrant works with VirtualBox directly, and so VirtualBox should already be installed before installing Vagrant.

Downloads and instructions can be found at: https://www.vagrantup.com/

**Your computer may require a restart at this point**

### Getting started

** Note: you will need to have full administrative privileges on the host machine. **

#### Get a Vagrant "box"

**Note: Downloading the Vagrant box might take some time, so it's best to download this file early.**

Before you can run a virtual machine on your computer, you will need an image of that virtual machine. A VM image that has been configured to work with Vagrant is called a vagrant "box". There isn't much difference between a vanilla VM image and the "Vagrantized" version of it other than the installation of extra tools that allow Vagrant to communicate with it through VirtualBox. For most demos, we will use an Ubuntu 14.04 (Trusty Tahr) box. This is available either on a USB stick or CD at one of our live demos, or it can be downloaded directly from a VirtualBox server. 

From a local source (USB stick or CD), a Vagrant box can be added to your local library of boxes with `vagrant box add`:

		vagrant box add /path/to/sls-demo.box --name sls-demo

Note that whatever 'name' is given for the box in your library, that is the name that is used in a Vagrantfile to spin up an instance of that box.

For remote sourcing, as from the VirtualBox server, `vagrant box add` works like this:

		vagrant box add ubuntu/trusty64
		
#### Get the source code

While the Vagrant box is downloading, we can move on:

	  git clone https://github.com/SLS-ALL/spring-petclinic.git
	  cd spring-petclinic

** Note: On Windows machines, _provision.sh_ may have problems running due to _^M_ line endings. _dos2unix_ may be used to convert the file: **

	  dos2unix provision.sh

### Demo Run #1: Shell script

The '--no-provision' argument tells Vagrant to skip any 'provision' blocks in the Vagrantfile. 

This will only stand up the VM:

	  vagrant up --no-provision

`vagrant ssh` into the VM, switch to root user, and look around:

	  vagrant ssh
	  sudo -i
	  cd /vagrant

`/vagrant` is a default shared folder that Vagrant provides so we can access the project root folder (the root folder with the Vagrantfile) on the host machine from within the VM.

As root, in /vagrant, we can run the script to install Java and Maven, build, test, and deploy our code:

	  ./provision.sh

Note that 'mvn' is not in PATH. The provisioning script exported this environment variable in _its_ shell, but _our_ shell was unaffected.

	  source ~/.bashrc

Now, with 'mvn' in PATH, we can run the application inside our VM:

	  mvn -f pom_provision_demo.xml tomcat7:run

To test, visit:

	  http://localhost:9966/petclinic

You can see how, with a VM, we can execute code in a standard environment, and with the use of shared folders, write code on our host platforms, whether that's Windows, Linux, or Mac. This helps to alleviate the pain point of having different development environments within a development team.

### Demo Run #2: Chef Solo

Shell scripting is a great way to script provisioning because the shell has so much control over the environment. The downside to this is that shell syntax is, itself, platform dependent, and sometimes what you need to do isn't very straightforward. Chef is a tool that adds a level of indirection on top of shell syntax, so that one basic command, or Chef "resource" can work in every environment. Chef's resources also provide shortcuts to common provisioning tasks such as configuration file templating, installing packages, manipulating routing tables and firewalls, and many more.

Chef uses "cookbooks" and "recipes" to provision environemnts. Here, we'll clone the necessary cookbooks directly from github into our /cookbooks folder:

	  cd cookbooks
	  git clone https://github.com/agileorbit-cookbooks/java.git
	  git clone https://github.com/opscode-cookbooks/maven.git
	  git clone https://github.com/burtlo/ark.git
	  git clone https://github.com/opscode-cookbooks/build-essential.git
	  cd ..

Without any extra arguments, Vagrant will perform its default behavior and run any provisioners. In this case, the "chef_solo" provisioner in our Vagrantfile references each of the cookbooks cloned above, and so `vagrant up` will run and install each:

	  vagrant up

Everything is done! We only need to 'ssh' into the VM and start the application server:

	  vagrant ssh
	  sudo -i
	  cd /vagrant
	  mvn -f pom_provision_demo.xml tomcat7:run

To test, visit:

	  http://localhost:9966/petclinic
	  