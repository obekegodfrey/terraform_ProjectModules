#--------AWS SG Attached to AWS VPC-------------#
resource "aws_security_group" "allow_tls" {
  name = var.name
  description = "Allow TLS inbound traffic"
  vpc_id = var.vpc_id

  ingress {
    description = "TLS from HTTPS"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = var.sg_tag
}

