
#Creating a Non-Root User on All Remote Servers
ansible-playbook -i hosts initial.yml

#Installing Kubernetetes' Dependencies
ansible-playbook -i hosts kube-dependencies.yml

#Setting Up the Master Node
ansible-playbook -i hosts master.yml

#Setting Up the Worker Nodes
ansible-playbook -i hosts workers.yml
	
#Running An Application on the Cluster
#Run the following commands in master node

#To create a deployment named nginx
#kubectl run nginx --image=nginx --port 80

#To create a service named nginx
#kubectl expose deploy nginx --port 80 --target-port 80 --type NodePort
#kubectl get services
#kubectl delete service nginx
#kubectl delete deployment nginx
#kubectl get deployments
