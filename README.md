# AWS Ansible Skeleton

This tutorial assumes that you have a CentOS EC2 AWS instance as well as the key

## Ingredients:
 
 ### ⋅⋅*AWS EC2 Instance (CentOS distribution)
 ### ⋅⋅*Python 2.7 on the local and remote instance
 ### ⋅⋅*Ansible Installed

This git repo was originally derived from: 
https://serversforhackers.com/c/an-ansible2-tutorial
Check them out!

## Instructions

 ### 1. Make hosts file
  ⋅⋅*This will contain the public DNS address for your EC2 instance as well as the appropriate ssh key
  ![alt text](/images/AWSDNS.png)
 ### 2. Make playbooks folder
  ⋅⋅*Organizes the directory since projects can have many different playbooks
 ### 3. Make YAML playbook
  ⋅⋅*Just updating the instances specified in the hosts file

 ### 4. Add .gitignore
 ⋅⋅* DO NOT UPLOAD SSH KEYS

 ### 5. Run ansible-playbook combining hosts and update.yml
    ansible-playbook -i hosts ./playbooks/update.yml --become
    
    ansible remote -i hosts -m ping
    ansible remote -i hosts -m shell -a "ls -a"
