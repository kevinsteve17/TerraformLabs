variable "my_key_name" {
  description = "*** Nombre de la llave ssh! ***"
  type    = string
}

# variable "ssh_key_path" {
#   type        = string
#   description = "Ruta de la llave SSH privada"
# }

variable "bucket_name" {
  type        = string
  description = "Nombre del bucket S3"
}