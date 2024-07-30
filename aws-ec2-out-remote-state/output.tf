output "vm_ip" {
  description = "Ip da VM criada na AWS"
  value       = aws_instance.vm.public_ip
}