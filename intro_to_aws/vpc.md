## 👨🏻‍🏫 Lab VPC

```
Create a new VPC with public subnets.
Each subnet will be created in different availability zones and you will attach a Network Access Control List (NACL).
Finally, you will create route table entires to allow communication between subnets and out to the internet.
```

### 🐾 Steps

1- Create a VPC from scratch (without using the VPC Wizard). Set the VPC CIDR to 10.0.0.0/16

2- Create an Internet Gateway and connect it to the VPC.

3- Edit the Main Route Table with two entries.

-   Create a default route to the internet using the 0.0.0.0/0 CIDR notation
-   Create a local route to allow internal communication within the VPC between the two public subnets.

4- Create a Network Access Control List (NACL), and associate it.

5- Create two public subnets in different availability zones using the following IP CIDR addresses:

-   Subnet 1 in us-east-1a: 10.0.1.0/24
-   Subnet 2 in us-east-1b: 10.0.2.0/24


### 📌 Result

![vpc](https://user-images.githubusercontent.com/43513994/223458261-f3d7fe8e-0110-4e14-aec6-f73050db4557.png)
