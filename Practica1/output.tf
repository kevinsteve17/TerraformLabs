output "salida_s3" {
  value = "Salida S3: ${aws_s3_bucket.kevinp1_bucket.id}.s3.amazonaws.com/${aws_s3_object.ssh_key.key}"
}

output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.lab_vpc.id
}