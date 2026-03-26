resource "aws_vpc" "myvpcaws" {
  cidr_block = var.vpc_cidr

  tags = {
    owner = var.tags["owner"]
    Name  = "VPC ${terraform.workspace}"
  }
}

resource "aws_subnet" "mysubnt" {
  vpc_id     = aws_vpc.myvpcaws.id
  cidr_block = var.subnet_cidr

  tags = {
    owner = var.tags["owner"]
    Name  = "Subnet ${terraform.workspace}"
  }
}