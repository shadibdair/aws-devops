## 🥷🏻 Microservices

**Microservices** : are small, independent services that work together to form a whole application.

**Microservices architectures** break the application up into several small services.

----

## 🐝 Deploying a Microservice Application to Kubernetes

Your team manages an online storefront called Stan's Robot Shop. Your company sells robots, and the team has built a rather complex micrservice-based application in order to serve the online store. You have been given the task of deploying this application to the cluster. Luckily, there are some pre-made Kubernetes YAML descriptors to make this easier, contained in a Git repository at https://github.com/linuxacademy/robot-shop.

However, the team anticipates that the search feature of the online store will need to handle some additional load soon after the store launches. After deploying the app, you will need to scale up the MongoDB service responsible for handling product searches.

Credit for the open source Stan's Robot Shop sample app goes to the folks at Instana!

You will need to do the following:

    -   Deploy the Stan's Robot Shop app to the cluster.
    -   Scale up the MongoDB service to two replicas instead of just one.

Once the app is deployed, you should be able to reach it in a browser using the Kube master node's public IP: http://$kube_master_public_ip:30080

If you need additional guidance, click the icon next to each task below for more information on how to complete each task. You can also check out the solution video for a detailed walkthrough.

----

## 🐢 Steps

Deploy the Stan's Robot Shop app to the cluster.

    1- Clone the Git repo that contains the pre-made descriptors:

    ```
    cd ~/
    git clone https://github.com/linuxacademy/robot-shop.git
    ```

    1- Since this application has many components, it is a good idea to create a separate namespace for the app:
    
    ```
    kubectl create namespace robot-shop
    ```

    1- Deploy the app to the cluster:

    ```
    kubectl -n robot-shop create -f ~/robot-shop/K8s/descriptors/
    ```

    1- Check the status of the application's pods:

    ```
    kubectl get pods -n robot-shop
    ```

    1- You should be able to reach the robot shop app from your browser using the Kube master node's public IP:
    
    ```
    http://$kube_master_public_ip:30080
    ```

Scale up the MongoDB deployment to two replicas instead of just one.

    1- Edit the deployment descriptor:

    ```
    kubectl edit deployment mongodb -n robot-shop
    ```
    1- You should see some YAML describing the deployment object.

        *   Under spec:, look for the line that says replicas: 1 and change it to replicas: 2.
        *   Save and exit.

    1- Check the status of the deployment with:

    ```
    kubectl get deployment mongodb -n robot-shop
    ```

    After a few moments, the number of available replicas should be 2.
    
    
----

## Robot Shop website

<img width="1662" alt="Screenshot 2023-03-12 at 17 43 47" src="https://user-images.githubusercontent.com/43513994/224555957-01dbdaf3-0322-42d0-836c-88e12ce6a3d9.png">

