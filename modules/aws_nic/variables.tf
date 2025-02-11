variable "subnet_id" {
  type = string 
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