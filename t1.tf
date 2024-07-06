#terraform block

terraform {
  required_version = "~> 1.6.1"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      
    }
  }
}

#provider block
provider "aws" {
  region = var.aws_region
  
}

#resource block
resource "aws_instance" "ABC" {
    ami = data.aws_ami.PRK.id
    instance_type = var.instance_type
    key_name = var.instance_keypair
    vpc_security_group_ids = [ aws_security_group.SG.id ]
    tags = {
      name ="PRKEC2"
    }
}