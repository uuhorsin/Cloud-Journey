terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0198cdf7458a7a932"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-server"
  }
}
