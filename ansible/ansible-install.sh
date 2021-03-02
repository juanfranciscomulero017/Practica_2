#! /bin/sh

#Lanzamos la ejecución de todos los libros
ansible-playbook setup_master_node.yaml && ansible-playbook setup_worker_nodes.yaml && ansible-playbook setup_nfs-server.yaml && ansible-playbook setup_k8sdashboard.yaml
