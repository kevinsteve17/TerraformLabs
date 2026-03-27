module "network" {
  source = "./network"

  vpc_cidr    = lookup(var.vpc_cidr, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  tags        = var.tags
}


module "infra" {
  source = "./infra"

  ami        = lookup(var.ami, terraform.workspace)
  instancia  = lookup(var.instancia, terraform.workspace)
  sg_id      = module.security.sg_id
  subnet_id  = module.network.subnet_id
  tags       = var.tags
}

module "security" {
  source = "./security"

  vpc_id = module.network.vpc_id
  tags   = var.tags
}

module "gcp" {
  source = "./gcp"

  gpc_id = module.gcp.gpc_id
  gcpsubnet_id = module.gcp.gpcsubnet_id
  tags   = var.tags


}