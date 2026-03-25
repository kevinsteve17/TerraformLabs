output "public_ip" {
  value = aws_instance.this.public_ip
}

output "instance_id" {
  value = aws_instance.this.id
}

output "name" {
  value = aws_instance.this.tags["Name"]
}

output "az" {
  value = aws_instance.this.availability_zone
}