
https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-1-11-cluster-using-kubeadm-on-ubuntu-18-04

#Creating a Non-Root User on All Remote Servers
ansible-playbook -i hosts initial.yml

#Installing Kubernetetes' Dependencies
ansible-playbook -i hosts kube-dependencies.yml

#Setting Up the Master Node
ansible-playbook -i hosts master.yml
	getinto master node and run "kubectl get nodes" to check if the master is in ready state

#Setting Up the Worker Nodes
ansible-playbook -i hosts workers.yml
	getinto master node and run "kubectl get nodes" to check if the master and workers are in ready state
	
#Running An Application on the Cluster
#Run the following commands in master node

#To create a deployment named nginx
kubectl run nginx --image=nginx --port 80

#To create a service named nginx
kubectl expose deploy nginx --port 80 --target-port 80 --type NodePort
kubectl get services
kubectl delete service nginx
kubectl delete deployment nginx
kubectl get deployments
