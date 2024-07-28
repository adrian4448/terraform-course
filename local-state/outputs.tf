output "bucket_id" {
  value       = aws_s3_bucket.bucket_curso_terraform.id
  description = "ID da bucket criada"
}

output "bucket_arn" {
  value       = aws_s3_bucket.bucket_curso_terraform.arn
  description = "ARN da bucket criada"
}
