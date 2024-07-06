#create security Group - SSH Traffic
resource "aws_security_group" "SG" {
    name        = "SCG"
    description = "dev VPC"
    ingress {
        description = "allow port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "allow all Ip"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      name = "New sg"
    }
  
}