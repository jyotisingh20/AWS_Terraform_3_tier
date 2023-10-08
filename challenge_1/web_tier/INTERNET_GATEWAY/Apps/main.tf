provider "aws" {
  region = var.aws_region
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.igw_name
  }
}
## create route table for web ##

resource "aws_route_table" "web-rte" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = var.cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }

  tags ={
    Name =var.web-rte
  }
  
}

## create Web Subnet association with web route table
resource "aws_route_table_association" "a" {
  subnet_id = aws_subnet.web-subnet-1.id
  route_table_id = aws_route_table.web-rte.id
  
}

resource "aws_route_table_association" "b" {
  subnet_id = aws_subnet.web-subnet-2.id
  route_table_id = aws_route_table.web-rte.id
  
}