resource "local_file" "key_file" {
  content  = tls_private_key.privateKey.private_key_pem
  filename = "${path.module}/${var.my_key_name}"
  #file_permission = "0600"
}

