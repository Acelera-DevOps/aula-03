output "instance_id" {
  value       = aws_instance.example.id
  description = "ID da instância EC2"
}

output "instance_public_ip" {
  value       = aws_instance.example.public_ip
  description = "IP público da instância EC2"
}
