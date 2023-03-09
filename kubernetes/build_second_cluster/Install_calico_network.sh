# Install the Calico Network Add-On
#On the control plane node, install Calico Networking:
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml

#Check status of the control plane node:
kubectl get nodes
# NAME          STATUS   ROLES           AGE    VERSION
# k8s-control   Ready    control-plane   5m8s   v1.24.0