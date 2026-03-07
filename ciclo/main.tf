resource "local_file" "file" {
  filename        = "bye.txt" # forces replacement
  file_permission = 0700
  content         = "Bye ... !!"


  lifecycle {
	create_before_destroy = true
  # prevent_destroy = true
  }
}
