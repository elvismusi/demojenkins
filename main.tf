provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  instance_type = "t2.micro"
  ami = "ami-0fc5d935ebf8bc3bc"
  tenancy = "default"
  tags = {
    Name = "jenkinsserver"
  }
}