provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "new"{
  cidr_block="10.0.1.0/24"
  vpc_id     = aws_vpc.main.id
  }
