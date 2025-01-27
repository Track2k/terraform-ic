resource "aws_vpc" "terraform_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

tags = {
  Name = "manjunath-tf-vpc"
}
}

resource "aws_subnet" "public_subnet_1a" {

  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        =  var.public-1a
  availability_zone = var.az-1a
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_1b" {

  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.public-1b
  availability_zone = var.az-1b
}


resource "aws_subnet" "public_subnet_1c" {

  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.public-1c
  availability_zone = var.az-1c
}


resource "aws_subnet" "private_subnet_1a" {

  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.private-1a
  availability_zone = var.az-1a
}

resource "aws_subnet" "private_subnet_1b" {

  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.private-1b
  availability_zone = var.az-1b

}

resource "aws_subnet" "private_subnet_1c"{

  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.private-1c
  availability_zone = var.az-1c

}


resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.terraform_vpc.id 

  tags = {
    Name = "TF-igw"
  }
}

resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }
}

resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = var.vpc_cidr
    gateway_id = "local"
  }
}

resource "aws_route_table_association" "public_route_associationA" {
  subnet_id = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "public_route_associationB" {
  subnet_id = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "public_route_associationC" {
  subnet_id = aws_subnet.public_subnet_1c.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "private_route_associationA"{
  subnet_id = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "private_route_associationB"{
  subnet_id = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "private_route_associationC"{
  subnet_id = aws_subnet.private_subnet_1c.id
  route_table_id = aws_route_table.private_route.id
}