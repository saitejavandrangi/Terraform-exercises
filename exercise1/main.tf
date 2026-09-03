terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "vm1" {
  ami                    = "ami-0b6d9d3d33ba97d99"
  key_name               = "orbital"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07e4f8162db2fea3f"] 

  tags = {
    Name = "Terraform IAC"
  }
}

