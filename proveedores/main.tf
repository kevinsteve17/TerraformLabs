resource "local_file" "password" {
  content  = "mipassword"
  filename = "password.txt"
  file_permission = "0400"
  directory_permission = "0600"
}
