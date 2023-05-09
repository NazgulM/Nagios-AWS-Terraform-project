module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = var.vpc_name
  cidr               = var.cidr_block
  azs                = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  enable_nat_gateway = false
  enable_vpn_gateway = false
}

resource "aws_security_group" "nagios" {
  name   = "HTTP and SSH"
  vpc_id = module.vpc.vpc_id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = local.common_tags
}
resource "aws_key_pair" "nagios" {
  key_name   = var.key_name
  public_key = file(var.key_file)
  tags       = local.common_tags
}
# Create AWS EC2 instance
resource "aws_instance" "nagios_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = element(module.vpc.public_subnets, 0)
  vpc_security_group_ids      = [aws_security_group.nagios.id]
  associate_public_ip_address = true
  user_data                   = file("ubuntuScript.sh")
  tags                        = local.common_tags
}