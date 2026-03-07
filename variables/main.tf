resource "local_file" "numero" {
  filename = var.nombre
  content  = var.num
}

resource "local_file" "persona"{
  filename = var.persona["filename"]
  content = var.persona["content"]
}

resource "local_file" "genero" {
  filename = var.persona["filename"]
  content  = var.genero[0]
}

resource "local_file" "id" {
  filename = "id.txt"
  content  = var.identificacion
}

resource "local_file" "almacenamiento" {
  filename = "almacenamiento.txt"
  content  = var.discos["rapido"]
}
