output "my_vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_a_id" {
    value = aws_subnet.public_a_cidr.id
}

output "private_subnet_a_id" {
    value = aws_subnet.private_a_cidr.id
}