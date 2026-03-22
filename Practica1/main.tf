

resource "aws_s3_bucket" "kevinp1_bucket" {
  bucket = var.bucket_name # el nombre del bucket debe ser unico.

	tags = {
    Name        = "KevinV bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "bloqueo" {
  bucket = aws_s3_bucket.kevinp1_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "owner" {
  bucket = aws_s3_bucket.kevinp1_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
	depends_on = [ aws_s3_bucket_ownership_controls.owner, aws_s3_bucket_public_access_block.bloqueo ]

  bucket = aws_s3_bucket.kevinp1_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "ssh_key" {
  bucket = aws_s3_bucket.kevinp1_bucket.id
  key    = "keys/${var.my_key_name}"
  source = "${path.module}/${var.my_key_name}" 
  # content = tls_private_key.example.private_key_pem  # No creamos el archivo fisico de la llave, por eso usamos el content
  # etag = filemd5("${path.module}/${var.my_key_name}") # Esto es para detectar cambios en el archivo.
}

resource "aws_vpc" "lab_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "lab-kevinviquezgomez"
  }
}