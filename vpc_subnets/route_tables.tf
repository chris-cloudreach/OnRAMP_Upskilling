#Create igw route table for public subnet A
resource "aws_route_table" "igw_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "internet-gateway-route-table"
  }
}

#route table assosc for pulic subnet A to IGW
resource "aws_route_table_association" "igw_public_a_cidr" {
  #this is wat associate the subnet to the desired gateway
  subnet_id = aws_subnet.public_a_cidr.id
  # specify the route table u created for this association
  route_table_id = aws_route_table.igw_route.id
}



# connect nat gateway to public subnet A 
resource "aws_route_table" "nat_route_private_a" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.NAT_public_subnet_a.id
  }

  tags = {
    Name = "nat_route_4_private_a subnet"
  }
}

#route table assosc from private subnet to nat gateway
resource "aws_route_table_association" "nat_public_a_cidr" {
  subnet_id      = aws_subnet.private_a_cidr.id
  route_table_id = aws_route_table.nat_route_private_a.id
}