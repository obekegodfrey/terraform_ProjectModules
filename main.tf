module "vpc" {
  source = "./modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag = var.vpc_tag
}

module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = module.vpc.id
  subnet_cidr = var.subnet_cidr
  subnet_tag = var.subnet_tag
  availability_zone = var.availability_zone
}

module "sg" {
  source = "./modules/aws_sg"
  name = var.name
  vpc_id = module.vpc.id
  sg_tag = var.sg_tag
}

module "nic" {
  source = "./modules/aws_nic"
  subnet_id = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_tag = var.nic_tag
}

module "instance" {
  source = "./modules/aws_instance"
  ami = var.ami
  instance_type = var.instance_type
  instance_tag = var.instance_tag
  nic_id = module.nic.nic_id
}







