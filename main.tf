provider "aws" {
  region = "us-east-1"
}


module "my_vpc" {
  source     = "./modules/aws-vpc"
  cidr_block = "10.0.0.0/16"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

module "example_instance" {
  source = "./modules/aws-ec2"
  ami_id                   = data.aws_ami.ubuntu.id
  instance_type            = var.instance_type
  subnet_id                = module.my_vpc.subnet_id 
  vpc_security_group_ids   = [module.my_vpc.security_group_id]
}
