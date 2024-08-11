#output public ID
output "Instance_public_ip" {
  description = "EC2 public IP"
  value = aws_instance.ABC.public_ip
}

#output "Instance_public_dns IP" 
output "Instance_public_dns" {
    description = "Public Dns"
    value = aws_instance.ABC.public_dns
  
}