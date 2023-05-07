region = "us-west-2"
vpc_name = "oregon-nagios-vpc"
key_name = "oregon-nagios-key"
cidr_block = "192.168.0.0/16"
instance_type = "t2.micro"
#Ubuntu AMI
#ami_id = "ami-0db245b76e5c21ca1"
#CentOS AMI
ami_id = "ami-08c191625cfb7ee61"
private_subnets = [ "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
public_subnets  = [ "192.168.101.0/24", "192.168.102.0/24", "192.168.103.0/24"]
public_subnet_az = ["us-west-2a", "us-west-2b", "us-west-2c"]
private_subnet_az = ["us-west-2a","us-west-2b","us-west-2c"]