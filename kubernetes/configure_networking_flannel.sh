# On all three nodes, run the following:
echo "net.bridge.bridge-nf-call-iptables=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
# Install Flannel in the cluster by running this only on the Master node:
kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel-old.yaml
# Verify that all the nodes now have a STATUS of "Ready":
kubectl get nodes
# You should see all three of your servers listed, and all should have a STATUS of "Ready". It should look something like this:
# NAME                           STATUS   ROLES    AGE   VERSION
# f8bbdd78c31c.mylabserver.com   Ready    master   15m   v1.15.7
# f8bbdd78c32c.mylabserver.com   Ready    <none>   12m   v1.15.7
# f8bbdd78c33c.mylabserver.com   Ready    <none>   12m   v1.15.7
# Note: It may take a few moments for all nodes to enter the "Ready" status, so if they are not all "Ready", wait a few moments and try again.
# It is also a good idea to verify that the Flannel pods are up and running. Run this command to get a list of system pods:
kubectl get pods -n kube-system
# Expected output:
# NAME                                                   READY   STATUS    RESTARTS   AGE
# coredns-5d4dd4b4db-4hx4f                               1/1     Running   0          15m
# coredns-5d4dd4b4db-jb6gz                               1/1     Running   0          15m
# etcd-f8bbdd78c31c.mylabserver.com                      1/1     Running   0          14m
# kube-apiserver-f8bbdd78c31c.mylabserver.com            1/1     Running   0          15m
# kube-controller-manager-f8bbdd78c31c.mylabserver.com   1/1     Running   0          15m
# kube-flannel-ds-amd64-mh2c7                            1/1     Running   0          71s
# kube-flannel-ds-amd64-qk7zl                            1/1     Running   0          71s
# kube-flannel-ds-amd64-srnb6                            1/1     Running   0          71s
# kube-proxy-2g26k                                       1/1     Running   0          13m
# kube-proxy-cqls4                                       1/1     Running   0          15m
# kube-proxy-x7qwl                                       1/1     Running   0          12m
# kube-scheduler-f8bbdd78c31c.mylabserver.com            1/1     Running   0          14m
# You should have three pods with "flannel" in the name, and all three should have a status of "Running".