resource "aws_instance" "example" {
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    tags = {
        Name = "Aula-terraform-03"
    }
}
