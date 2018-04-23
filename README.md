This tutorial assumes that you have a CentOS EC2 AWS instance as well as the key

Derived from: https://serversforhackers.com/c/an-ansible2-tutorial

1. Make hosts file
2. Make playbooks folder and then Yaml file

 ansible remote -i hosts -m ping
 ansible remote -i hosts -m shell -a "ls -a"

3. Run ansible-playbook combining hosts and update.yml

  ansible-playbook -i hosts ./playbooks/update.yml --become
