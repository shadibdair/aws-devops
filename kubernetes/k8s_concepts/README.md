# 🎃 Concepts

## 🔗 K8S includes multiple components that work together to provide the functionality of a K8S cluster.

### 🔗 The control plane components manage and control the cluster.

* etcd : Provides distributed synchronized data storage for the cluster state.
* kube-apiserver : Serves the k8s API, the primary interface for the cluster.
* kube-controller-manager : Bundles several components into one package.
* kube-scheduler : Schedules pods to run on individual nodes.

### 🔗 In addition to the control plane, each node also had

* kubelet : Agent that executes containerson each node.
* kube-proxy : Handles network communication between nodes by adding firwall routing rules.
