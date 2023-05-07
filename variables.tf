variable "region" {
  type        = string
  description = "Enter AWS region"
  default     = ""
}
variable "vpc_name" {
  type        = string
  description = "Enter the name of VPC"
  default     = ""
}
variable "cidr_block" {
  description = "Enter cidr block"
  type        = string
  default     = ""
}
variable "public_subnets" {
  description = "Enter private subnets"
  type        = list(any)
  default     = []
}
variable "public_subnet_cidr_block" {
  description = "Enter the public subnet cidr_block"
  type        = string
  default     = "10.0.1.0/24"
}
variable "public_subnet_az" {
  description = "Enter the AZ"
  type        = list(any)
  default     = []
}
variable "private_subnets" {
  description = "Enter private subnet"
  type        = list(any)
  default     = []
}
variable "private_subnet_cidr_block" {
  description = "Enter the private subnet cidr_block"
  type        = string
  default     = "10.0.2.0/24"
}
variable "private_subnet_az" {
  description = "Enter the AZ"
  type        = list(any)
  default     = []
}
variable "key_name" {
  description = "Enter key name"
  type        = string
  default     = ""
}
variable "key_file" {
  description = "Enter public key location"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
variable "ami_id" {
  description = "Enter the ami id"
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "Enter the instance type"
  type        = string
  default     = ""
}