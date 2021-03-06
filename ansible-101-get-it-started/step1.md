Ansible is a simple IT automation engine for configuration management and orchestration.
It can automates cloud provisioning, system configuration, application deployment and much more.

## Initialize workspace

Ansible needs to be installed on the control node. Packages are available for Ubuntu 16.04+, CentOS 7 and more distributions.

First add package repository for latest release:
`until apt-add-repository -y ppa:ansible/ansible; do sleep 3; done`{{execute HOST1}}

After that install Ansible:
`apt-get update && apt-get install -y ansible`{{execute HOST1}}

When executed, Ansible will lookup for target host that are listed in inventories. We will cover inventories in another tutorial.
Let's start with a simple form of an inventory for now. After installation, there's an example inventory file you can reference at /etc/ansible/hosts. Move the default one so we can reference it later.

`mv /etc/ansible/hosts /etc/ansible/hosts.default`{{execute HOST1}}

Now create a hosts inventory file simply looked like this:
```
cat << ... > /etc/ansible/hosts
[local]
127.0.0.1 ansible_connection=local
...
```{{execute HOST1}}

Now you can test your inventory. Simply ping all nodes for this.
`ansible all -m ping`{{execute HOST1}}
