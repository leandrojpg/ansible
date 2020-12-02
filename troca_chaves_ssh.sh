#for i in $(cat lista_nodes_cluster.txt); do sshpass -p '102010' ssh-copy-id -o 'StrictHostKeyChecking no' root@$i; done
for i in $(cat lista_nodes_cluster.txt); do sshpass -p '102010' ssh-copy-id -o 'StrictHostKeyChecking no' admincluster@$i; done
