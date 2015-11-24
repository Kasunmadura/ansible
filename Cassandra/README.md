Author:Kasun Rathanayaka
Web:kasunmadura.com

Cassandra Cluster Deployment

Requires Ansible 1.2 or newer
Expects Ubuntu hosts

These playbooks deploy Cassandra Cluster implementation. To use them, first edit the "hosts" inventory file to contain the hostnames of the machines on which you want Cassandra deployed, and edit the group_vars/cassandra file to set any Cassandra configuration parameters you need.

note: when you change cluster name , you have to remove keyspace  files
https://ksearch.wordpress.com/2012/10/15/cassandra-how-to-fix-fatal-exception-during-initialization-org-apache-cassandra-config-configurationexception-saved-cluster-name-test-cluster-configured-name/

Then run the playbook, like this:

ansible-playbook -i hosts site.yml

When the playbook run completes, command in servers ...:)

nodetool status 
