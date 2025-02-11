variable "ami" {
  type = string
  default = "ami-04b4f1a9cf54c11d0"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "instance_tag" {
  type = map(any)
  default = {
    "Name" = "PROD_SERVER"
  }
}

variable "nic_id" {
  type = string
}