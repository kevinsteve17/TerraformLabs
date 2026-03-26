output "public_ip" {
  value = aws_instance.infraws.public_ip
}

output "instance_id" {
  value = aws_instance.infraws.id
}

output "name" {
  value = aws_instance.infraws.tags["Name"]
}

output "az" {
  value = aws_instance.infraws.availability_zone
}