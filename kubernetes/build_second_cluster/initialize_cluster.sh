# Initialize the Cluster
# On the control plane node, initialize the Kubernetes cluster on the control plane node using kubeadm:
sudo kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.24.0

# Set kubectl access:
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#Test access to cluster:
kubectl get nodes