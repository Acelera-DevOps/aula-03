provider "aws" {
  region = var.aws_region
}

module "my_vpc" {
  source     = "./modules/aws-vpc"
  cidr_block = var.vpc_cidr_block
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

module "example_instance" {
  source                 = "./modules/aws-ec2"
  ami_id                 = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = module.my_vpc.subnet_id
  vpc_security_group_ids = [module.my_vpc.security_group_id]
}
