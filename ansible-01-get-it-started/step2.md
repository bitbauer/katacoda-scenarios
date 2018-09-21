Like other configuration engines Ansible consists of 3 basic elements.

The code that define state of target system and executions to get it right.
The variables to make code usable for more than one system and for various scenarios.
File resources that can be used in the code to make some cases easier.

## Playbooks

Ansible Playbooks are the code. It is implemented in a declarative language in YAML files.
They can be used to manage configurations of and deployments to remote machines.

Let's do some work.

There is a prepared playbook implementing the connection test we did in the last chapter.
<pre class="file" data-filename="ping.yml" data-target="replace">---
- hosts: all
  remote_user: root
  tasks:
    - name: test connection
      ping:
      register: result
    - name: show result
      debug:
        var: result
</pre>

`ansible-playbook ping.yml`{{execute HOST1}}

For each play in a playbook, you get to choose which machines in your infrastructure to target and what remote user to complete the steps (called tasks) as. For better structure we recommend to separate each play in a different playbook file.


## Add variables for flexibility

## We need some resources

...
