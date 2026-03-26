resource "aws_instance" "infraws" {
  ami                    = var.ami
  instance_type          = var.instancia
  subnet_id              = var.subnet_id
  associate_public_ip_address = true

  # Agrgamos el security group id
  vpc_security_group_ids = [var.sg_id]

  tags = {
    owner = var.tags["owner"]
    Name  = "${terraform.workspace}-vm"
  }
}