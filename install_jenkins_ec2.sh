#!/bin/bash


# Script to install jenkins.
sudo yum update
java -version
#Jenkins is a free and open-source automation server. It helps automate the parts of software development related to building, testing, and deploying, facilitating continuous integration and continuous delivery.

#Step 1: Launching an Amazon Linux EC2 instance

#Step 2: Installation of Jenkins on EC2 Instance
#i. Run the command to update all the packages.

sudo yum update

#ii. Check if java is installed or not using the command

java -version

#If java is not installed, install using the following command

sudo yum install java-1.8.0-openjdk

#iii. Now, to download the latest Jenkins package

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo

#iv. **To enable the installation of the package, import the key file from Jenkins-CI:

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

#v. Install Jenkins on the EC2 instance

sudo yum install jenkins

#vi. To start the Jenkins service

sudo service jenkins start
