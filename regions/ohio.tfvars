region = "us-east-2"
key_name = "ohio-nagios-key"
vpc_name = "ohio-nagios-vpc"
cidr_block = "172.16.0.0/16"
instance_type = "t2.micro"
#Ubuntu AMI
#ami_id = "ami-06c4532923d4ba1ec"
#CentOS AMI
ami_id = "ami-05a36e1502605b4aa"
private_subnets = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
public_subnets  = ["172.16.101.0/24", "172.16.102.0/24", "172.16.103.0/24"]
public_subnet_az = ["us-east-2a","us-east-2b","us-east-2c"]
private_subnet_az = ["us-east-2a", "us-east-2b","us-east-2c"]