variable "ami" {
  type = string
}

variable "instancia" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "sg_id" {
  type = string
}