
#!/bin/bash

# 1. Update Commands
apt_update()
{
sudo apt-get update &&
sudo apt-get upgrade --yes &&
sudo apt-get install python2.7 python-pip ;
}

# 2. SSH into the Instance and run the commands
ssh -i "./keys/MiscKeyPair.pem" ubuntu@ec2-54-193-17-54.us-west-1.compute.amazonaws.com "$(declare -f apt_update);apt_update"

