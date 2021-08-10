
# EC2-terraform

## Create an ec2 instance via terraform and use ansible to install docker.
### With over 32 percent of the entire world’s public cloud share, it’s no surprise that AWS serves more than 190 countries with scalable, reliable, and low-cost infrastructure. One of its most powerful and commonly used services are Amazon EC2 (Elastic Cloud Compute).

The several benefits and features draw developers to Amazon EC2 for getting started with cloud computing. Here’s a list of a few important one’s:

* Easy scaling of EC2 terminate development obstruction that occur when applications require more resources.
* EC2 provides flexibility in configuration, you can create multiple instances with memory size, CPU, network configuration identified as an instance type.
* EC2 provides IAM roles for your instances access management where you will assign IAM roles to an account for more granular access management.
* The best part about Amazon EC2 is that it offers affordable hourly rates.
### Components:
* Terraform
* Ansible
* Docker
## How to start:

Create and lainch EC2 instance,attaching  the  Admin-Role .

 Install Terraform :

 sudo yum install git 
 sudo yum install wget -y
 sudo wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip
    sudo yum install unzip 
    sudo unzip terraform_0.14.7_linux_amd64.zip 
    sudo mv  terraform /bin
    terraform   --version
   ## RUN COMMANDS:
   * terraform init
   * terraform plan 
   * terraform apply 
   ## Using Ansible to install Docker we provide: 
   
   create vi /etc/ansible/hosts
   insert your machine inside in file hosts
   create docker.yaml
   we can start to insert all the step for docker installation
   install the dependency
   install Docker
   make sure that docker was started and enabled
   ##  NOW LAUNCH ANSIBLE :
   ansible-playbook docker.yaml
   


    
