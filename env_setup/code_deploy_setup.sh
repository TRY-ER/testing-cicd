#!/bin/bash

# Update packages
sudo yum update

# Install Ruby
sudo yum install -y ruby

# Install wget
sudo yum install -y wget

# Download AWS CodeDeploy agent installer
wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/latest/install

# Make the installer executable
chmod +x ./install

# Run the installer with auto option
sudo ./install auto

# Start CodeDeploy agent service
sudo service codedeploy-agent start
