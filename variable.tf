variable "aws_region" {
  description = "Região da AWS onde os módulos serão provisionados"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "Bloco CIDR principal da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "The instance type of the EC2 instance"
  type        = string
  default     = "t3.micro"
}
