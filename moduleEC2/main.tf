provider "aws" {
  region = var.region
}

#CREATE EC2 INSTANCE 
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2_keypair" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}


resource "aws_instance" "public_server" {
  
  ami = var.ami_id
  instance_type = var.ec2instancetype
  key_name = aws_key_pair.ec2_keypair.key_name
  subnet_id = var.subnet_idd
  vpc_security_group_ids = [var.ec2_SG]
  associate_public_ip_address = true
  tags = {
    Name = "public_server"
  }
depends_on = [aws_key_pair.ec2_keypair]
}