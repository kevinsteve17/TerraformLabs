# resource "local_file" "module-demo" {
#   filename = var.in-filename
#   content  = "Este es mi primer módulo"
# }

resource "local_file" "module-demo" {
  filename        = var.in-filename
  content         = var.in-content
  file_permission = var.in-permission
}