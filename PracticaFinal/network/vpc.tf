resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    owner = var.tags["owner"]
    Name  = "VPC ${terraform.workspace}"
  }
}

resource "aws_subnet" "this" {
  vpc_id     = aws_vpc.this.id
  cidr_block = var.subnet_cidr

  tags = {
    owner = var.tags["owner"]
    Name  = "Subnet ${terraform.workspace}"
  }
}