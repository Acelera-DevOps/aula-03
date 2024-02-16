# Arquivo: modules/aws-vpc/outputs.tf

output "vpc_id" {
  value = aws_vpc.example.id
  description = "esse é o id da vpc"
}

output "aws_subnet" {
  value = aws_subnet.example-subnet.id
  descripiton =  "esse é o id da subnet"
}

output "aws_internet_gateway" {
  value = aws_internet_gateway.example.id
  description = "esse é o id do gateway"
}

output "aws_route_table" {
  value = aws_route_table.rt.id
  description = "esse é o id da route table"
}
