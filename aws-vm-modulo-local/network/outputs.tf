output "subnet_id" {
  description = "ID da subnet criada na AWS"
  value       = aws_subnet.curso_terraform_subnet.id
}

output "security_group_id" {
  description = "ID da security group criada na aws"
  value       = aws_security_group.curso_terraform_security_group.id
}
