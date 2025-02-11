variable "vpc_cidr" {
  type = string
  default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    Name = "tf-example"
  }
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

variable "name" {
  type = string
  default = "allow_tls"
}

variable "sg_tag" {
  type = map(any)
  default = {
    Name="allow_tls"
  }
}


variable "private_ips" {
  type = list(string)
  default = ["172.16.10.100"]
}
variable "nic_tag" {
  type = map(any)
  default = {
    Name="primary_network_interface"
  }
}

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

