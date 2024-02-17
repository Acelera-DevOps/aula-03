# Arquivo: modules/aws-vpc/outputs.tf

output "aws_vpc" {
  value = aws_vpc.example.id
  description = "esse é o id da vpc"
}

output "aws_subnet" {
  value = aws_subnet.example-subnet.id
  description = "esse é o id da subnet"
}

output "aws_internet_gateway" {
  value = aws_internet_gateway.example.id
  description = "esse é o id do gateway"
}

output "aws_route_table" {
  value = aws_route_table.rt.id
  description = "esse é o id da route table"
}

output "aws_route_table_association" {
  value = aws_route_table_association.example-rt-association.id
  description = "esse é o id da route table association"
}

output "aws_security_group" {
  value = aws_security_group.allow_acess.id
  description = "esse é o id do security group"
}

output "subnet_id" {
  value = aws_subnet.example-subnet.id
}

output "security_group_id" {
  value = aws_security_group.allow_acess.id
}
