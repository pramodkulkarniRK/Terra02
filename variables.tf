#input variables

# AWS region
variable "aws_region" {
    description = "region in which aws resorces will be created"
    type = string
    default = "us-east-1"
  
}

# Instance variable
variable "instance_type" {
description = "ec2 instance"
type = string
default = "t2.micro"
  
}

#key pair variable
variable "instance_keypair" {
    description = "ec2 key pair"
    type = string
    default = "terraform-key"
  
}

