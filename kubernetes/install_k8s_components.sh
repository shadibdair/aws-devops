# Add the k8s repo GPG key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
# Add the k8s repo
cat << EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
# Reload the apt sources list
sudo apt-get update
# Install packages
sudo apt-get install -y kubelet=1.15.7-00 kubeadm=1.15.7-00 kubectl=1.15.7-00
# Prevent auto-updates for the kube package
sudo apt-mark hold kubelet kubeadm kubectl
# After installing these components, verify that kubeadm is working by getting the version info.
kubeadm version