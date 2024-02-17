## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

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

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_internet_gateway"></a> [aws\_internet\_gateway](#output\_aws\_internet\_gateway) | esse é o id do gateway |
| <a name="output_aws_route_table"></a> [aws\_route\_table](#output\_aws\_route\_table) | esse é o id da route table |
| <a name="output_aws_route_table_association"></a> [aws\_route\_table\_association](#output\_aws\_route\_table\_association) | esse é o id da route table association |
| <a name="output_aws_security_group"></a> [aws\_security\_group](#output\_aws\_security\_group) | esse é o id do security group |
| <a name="output_aws_subnet"></a> [aws\_subnet](#output\_aws\_subnet) | esse é o id da subnet |
| <a name="output_aws_vpc"></a> [aws\_vpc](#output\_aws\_vpc) | esse é o id da vpc |
