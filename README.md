# Terraform VPC Creation

- It will create a VPC, multiple subnets(Public and Private), Internet gateway.
In addition, Custom Route Tables and associate them with sub nets with NAT gateway support.

----
# VPC Module
- In this project we are using terraform module. Module is a set of terraform configuration files in a single directory. 
Which basically help us to support DRY concept. We can use same module at multiple places.

- Inside the module directory we created VPC module. Which maninly consist 3 files.
  - main.tf - This file consist all the require resources for out infrastructure
  - variables.tf - This file has list of variables with description and their types
  - outputs.tf - This file prints out details of resources in the console
  
------
# Sandbox 
- This is the directory to create VPC for our Sandbox environment
- In this I tried to come up with clean file structure. Which just make job more easy to understand and debug if something goes wrong
- Brief details about different files inside the directory and their content 
  - outputs.tf - This file prints out details of resources in the console
  - provider.tf - Inside this file we defined which proivder we want to use and few important parameters for that provider (Provider could be Azure, AWS, Google and so on)
  In our case we use AWS as a provider. We have to declare specific version and credentials for the provider. We also have to define terraform and it's version.
  - terraform.tfvars - This file is used to provide value to already specified varibles in the variables.tf file
  - variables.tf - This file has list of variables with description and their types
  - vpc.tf - In this file we have defined which resources we want to use. I used module to create VPC. So I had to define path for that module and all the
  parameters to create that module.
  
-----
# Commands to excute the Terraform project
- Terraform init - This command will download the provided version of the Terraform and the provider define in the terraform file
- Terrafrom plan - This will print out the plan of our infrastructre in the console. By doing that we can understand which resource it will create.
Beauty of terraform is, it will figure out which new resources it needs to create for us based on data we provided. It will figure out a way to reach the desire
state of the infrastructure from the current state.
- Terraform apply - After reviewing the plan this the next step. It will convert the code into the desire infrastructure based on our requirements.
- Terraform destroy - This will remove the unwanted infrastructure properly with out missing any resources and help us to cutdown the cost.


