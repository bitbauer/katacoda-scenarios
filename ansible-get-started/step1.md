Ansible is a simple IT automation engine for configuration management and orchestration.
It can automates cloud provisioning, system configuration, application deployment and much more.

## Initialize workspace

Ansible will lookup for target host that are listed in inventories. Ansible inventories are covered in another tutorial.
Let's start with a simple form of an inventory for now. After installation, there's an example inventory file you can reference at /etc/ansible/hosts. Move the default one so we can reference it later.

`sudo mv /etc/ansible/hosts /etc/ansible/hosts.default`

Now create a hosts inventory file simply looked like this:

<pre><code>
[local]
127.0.0.1
<code><pre>

`sudo echo -e '[local]\n127.0.0.1' >/etc/ansible/hosts`

Now you can test your inventory. Simply ping all nodes for this.

`ansible all -m ping`

## Task

...
