terraform {
  required_providers{
      aws = {
          source = "hashicorp/aws"
      }
  }
}
provider "aws"{
    region = ""
    access_key =""
    secret_key= ""
}
 
 resource "aws_instance" "aws"{
     ami=""
     instance_type = "t2.micro"
 }
output  public_ip {
  value       = aws_instance.demo-instance.public_ip
}
