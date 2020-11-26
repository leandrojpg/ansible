## Crie o arquivo lista_nodes_cluster.txt que deverá conter todas os servidores incluso o bastion
## Instale o sshpass (yum intall sshpass -y)
## Gera a senha com o usuario root e outro com usuario admincluster
## ssh-keygent (ususario root)
## su - admincluster
## ssh-keygen (aperte enter em todas as perguntas para gerar a chave sem senha)
## Em seguida rode o playbook prepara_server.yml
for i in $(cat lista_nodes_cluster.txt); do sshpass -p '102010' ssh-copy-id -o 'StrictHostKeyChecking no' root@$i; done
for i in $(cat lista_nodes_cluster.txt); do sshpass -p '102010' ssh-copy-id -o 'StrictHostKeyChecking no' admincluster@$i; done
