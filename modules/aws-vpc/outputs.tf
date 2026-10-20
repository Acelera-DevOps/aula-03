# Arquivo: modules/aws-vpc/outputs.tf

output "aws_vpc" {
  value       = aws_vpc.example.id
  description = "ID da VPC provisionada"
}

output "aws_subnet" {
  value       = aws_subnet.example-subnet.id
  description = "ID da sub-rede pública"
}

output "aws_internet_gateway" {
  value       = aws_internet_gateway.example.id
  description = "ID do Internet Gateway"
}

output "aws_route_table" {
  value       = aws_route_table.rt.id
  description = "ID da Route Table pública"
}

output "aws_route_table_association" {
  value       = aws_route_table_association.example-rt-association.id
  description = "ID da associação entre Subnet e Route Table"
}

output "aws_security_group" {
  value       = aws_security_group.allow_acess.id
  description = "ID do Security Group"
}

output "subnet_id" {
  value       = aws_subnet.example-subnet.id
  description = "ID da sub-rede pública (alias para consumo entre módulos)"
}

output "security_group_id" {
  value       = aws_security_group.allow_acess.id
  description = "ID do Security Group (alias para consumo entre módulos)"
}
