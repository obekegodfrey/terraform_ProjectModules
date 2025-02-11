variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type = string
  default = "172.0.0.0/24"
}

variable "availability_zone" {
  type = string
  default = "us-west-2a"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    Name="tf-example"
  }
}