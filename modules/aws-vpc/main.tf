# Arquivo: modules/aws-vpc/main.tf

resource "aws_vpc" "example" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name      = "example-vpc"
    ManagedBy = "Terraform"
  }
}

resource "aws_subnet" "example-subnet" {
  vpc_id                  = aws_vpc.example.id
  cidr_block              = var.subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone

  tags = {
    Name      = "subnet-aula-03"
    ManagedBy = "Terraform"
  }
}

resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name      = "example-igw"
    ManagedBy = "Terraform"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example.id
  }

  tags = {
    Name      = "example-rt"
    ManagedBy = "Terraform"
  }
}

resource "aws_route_table_association" "example-rt-association" {
  subnet_id      = aws_subnet.example-subnet.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_security_group" "allow_acess" {
  name        = "allow_acess"
  description = "Allow inbound SSH (22) and HTTP (80) traffic"
  vpc_id      = aws_vpc.example.id

  ingress {
    description = "SSH Inbound"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP Inbound"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "allow_acess-sg"
    ManagedBy = "Terraform"
  }
}
