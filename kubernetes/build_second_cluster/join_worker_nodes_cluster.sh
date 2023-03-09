# Join the Worker Nodes to the Cluster
# In the control plane node, create the token and copy the kubeadm join command:
kubeadm token create --print-join-command
#Note: This output will be used as the next command for the worker nodes.
#Copy the full output from the previous command used in the control plane node. This command starts with kubeadm join.
#In both worker nodes, paste the full kubeadm join command to join the cluster. Use sudo to run it as root:
sudo kubeadm join... 
# sudo kubeadm join 10.0.1.101:6443 --token 6l0zxf.r2849n0uh9ypu6f8 --discovery-token-ca-cert-hash sha256:757649b3ea7b5acee8b2ee94217a414bcab73fb7c1a920aaa66ca405c38b76a7

# In the control plane node, view cluster status:
kubectl get nodes
# Note: You may have to wait a few moments to allow all nodes to become ready.
# NAME          STATUS   ROLES           AGE   VERSION
# k8s-control   Ready    control-plane   11m   v1.24.0
# k8s-worker1   Ready    <none>          62s   v1.24.0
# k8s-worker2   Ready    <none>          67s   v1.24.0