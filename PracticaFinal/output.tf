output "public_ip" {
  value = module.infra.public_ip
}

output "instance_id" {
  value = module.infra.instance_id
}

output "name" {
  value = module.infra.name
}

output "az" {
  value = module.infra.az
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "owner" {
  value = var.tags["owner"]
}

output "sg_id" {
  value = module.security.sg_id
}