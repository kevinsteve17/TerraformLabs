resource "local_file" "password" {
  content  = "mipassword"
  filename = "password.txt"
}
