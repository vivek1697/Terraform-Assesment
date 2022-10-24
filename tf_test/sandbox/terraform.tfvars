//AWS 
region      = "us-east-1"
environment = "sandbox"

/* module networking */
vpc_cidr_block             = "<<VPC cidr ranger like 10.0.0.0/16>>"
public_subnet_cidr_blocks  = ["172.33.10.0/24","172.33.20.0/24","172.33.30.0/24"] //List of Public subnet cidr range
private_subnet_cidr_blocks = ["172.33.100.0/24","172.33.110.0/24","172.33.120.0/24"] //List of private subnet cidr range
