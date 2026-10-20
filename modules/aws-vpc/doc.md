# Módulo Local `aws-vpc`

Módulo reutilizável responsável por provisionar uma VPC com suporte a DNS, sub-rede pública, Internet Gateway, Route Table e Security Group (SSH 22 / HTTP 80).

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.example-rt-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.allow_acess](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.example-subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block for the VPC | `string` | n/a | yes |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | CIDR block for the public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Availability zone for the public subnet | `string` | `"us-east-1a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_internet_gateway"></a> [aws\_internet\_gateway](#output\_aws\_internet\_gateway) | ID do Internet Gateway |
| <a name="output_aws_route_table"></a> [aws\_route\_table](#output\_aws\_route\_table) | ID da Route Table pública |
| <a name="output_aws_route_table_association"></a> [aws\_route\_table\_association](#output\_aws\_route\_table\_association) | ID da associação entre Subnet e Route Table |
| <a name="output_aws_security_group"></a> [aws\_security\_group](#output\_aws\_security\_group) | ID do Security Group |
| <a name="output_aws_subnet"></a> [aws\_subnet](#output\_aws\_subnet) | ID da sub-rede pública |
| <a name="output_aws_vpc"></a> [aws\_vpc](#output\_aws\_vpc) | ID da VPC provisionada |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID do Security Group (alias para consumo entre módulos) |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | ID da sub-rede pública (alias para consumo entre módulos) |
