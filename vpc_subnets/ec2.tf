#CREATE EC2 INSTANCE 
data "aws_ami" "my_aws_ami" {
  
  filter {
    name   = "name"
    values = ["amzn2-ami*"]
  }
  owners = ["137112412989"]
  most_recent = true
}


resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2_keypair" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}


resource "aws_instance" "public_server" {
  ami = data.aws_ami.my_aws_ami.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.ec2_keypair.key_name
  subnet_id = aws_subnet.public_a_cidr.id
  vpc_security_group_ids = [aws_security_group.ICMP_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "public_server"
  }
depends_on = [aws_key_pair.ec2_keypair]
}