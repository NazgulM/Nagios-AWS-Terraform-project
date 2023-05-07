region = "us-east-1"
vpc_name = "virginia-nagios-vpc"
key_name = "virginia-nagios-key"
cidr_block = "10.0.0.0/16"
instance_type = "t2.micro"
#Ubuntu ami
#ami_id = "ami-0aa2b7722dc1b5612"
#CentOS AMI
ami_id = "ami-002070d43b0a4f171"
private_subnet = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
public_subnet_az = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnet_az = ["us-east-1a","us-east-1b","us-east-1c"]
