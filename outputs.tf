output "vpc_id" {
  description = "ID da VPC criada pelo módulo local aws-vpc"
  value       = module.my_vpc.aws_vpc
}

output "subnet_id" {
  description = "ID da Subnet pública criada pelo módulo local aws-vpc"
  value       = module.my_vpc.subnet_id
}

output "instance_id" {
  description = "ID da instância EC2 criada pelo módulo local aws-ec2"
  value       = module.example_instance.instance_id
}

output "instance_public_ip" {
  description = "Endereço IP público da instância EC2 criada pelo módulo local aws-ec2"
  value       = module.example_instance.instance_public_ip
}
