#---------------AWS subnet Attached to AWS VPC-----------#
resource "aws_subnet" "my_subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  tags = var.subnet_tag
}

