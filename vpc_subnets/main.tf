resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.IG_name
  }
}

resource "aws_subnet" "public_a_cidr" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_a_cidr
  map_public_ip_on_launch = true
  availability_zone = "${var.region}a"
  tags = {
    Name = "public-subnet"
  }
}

# PRIVATE SUBNETS
resource "aws_subnet" "private_a_cidr" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_a_cidr
  
  availability_zone = "${var.region}a"
  tags = {
    Name = "private-subnet"
  }
}

# NAT GATEWAY
resource "aws_eip" "nat_a_eip" {
  vpc = true
  tags = {
    Name = "OnRAMPeip"
  }
}

resource "aws_nat_gateway" "NAT_public_subnet_a" {
  allocation_id = aws_eip.nat_a_eip.id
  subnet_id     = aws_subnet.public_a_cidr.id

  tags = {
    Name = "NATGATEWAY FOR PUBLIC SUBNET"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}