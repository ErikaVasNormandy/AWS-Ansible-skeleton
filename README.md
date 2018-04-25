# AWS Ansible Skeleton

This tutorial assumes that you have a CentOS EC2 AWS instance as well as the key

## Ingredients:
 
 #### AWS EC2 Instance (CentOS distribution)
 #### Python 2.7 on the local and remote instance
 #### Ansible Installed

This git repo was originally derived from: 
https://serversforhackers.com/c/an-ansible2-tutorial
Check them out!

## Instructions

 ### 1. Make hosts file
  This will contain the public DNS address for your EC2 instance as well as the appropriate ssh key
  ![alt text](/images/AWSDNS.png)
  
  ### 2. Add ssh keys .pem files to a separate folder to be added to the .gitignore. Don't forget to specify the key within the hosts file
  
 ### 3. Make playbooks folder
  Organizes the directory since projects can have many different playbooks
  
 ### 4. Make YAML playbook
  We can name our .yml file anything, but it just needs the hosts it refers to, and the tasks to run 
  
  
![alt text](/images/Playbookfolder.png)

 ### 5. Add .gitignore
  DO NOT UPLOAD SSH KEYS

 ### 6. Run ansible-playbook combining hosts and update.yml
 
 
    ansible-playbook -i hosts ./playbooks/update.yml --become
    
    ansible remote -i hosts -m ping
    
    ansible remote -i hosts -m shell -a "ls -a"
