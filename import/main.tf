resource "aws_instance" "demo-import" {
    ami                                  = "ami-033b95fb8079dc481"
    associate_public_ip_address          = false
    availability_zone                    = "us-east-1d"
    instance_type                        = "t3a.nano"
    subnet_id                            = "subnet-084b6865e54974ba4"
}