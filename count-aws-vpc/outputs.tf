output "subnet_0_id" {
  description = "ID da subnet criada na AWS"
  value       = aws_subnet.curso_terraform_subnet[0].id
}

output "subnet_1_id" {
  description = "ID da subnet criada na AWS"
  value       = aws_subnet.curso_terraform_subnet[1].id
}

output "subnet_2_id" {
  description = "ID da subnet criada na AWS"
  value       = aws_subnet.curso_terraform_subnet[2].id
}