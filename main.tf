terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "newvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "newsubnet" {
  vpc_id     = aws_vpc.newvpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}



/* resource "aws_network_interface" "nic" {
  subnet_id   = aws_subnet.newsubnet.id
  private_ips = ["10.0.1.0/24"]

  tags = {
    Name = "newnic"
  }
} */

resource "aws_network_interface" "nic" {
  subnet_id = aws_subnet.newsubnet.id

  tags = {
    Name = "newnic"
  }
}
