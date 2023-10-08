provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = var.aws_region
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}
resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = var.aws_region
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}

# Create Application Private Subnet
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.11.0/24"
  availability_zone       = var.aws_region
  map_public_ip_on_launch = false

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.12.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = var.subnet_name
  }
}

# Create Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "10.0.21.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_subnet" "database-subnet-2" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "10.0.22.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = var.subnet_name
  }
}
