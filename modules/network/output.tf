output "aws_vpc" {
    value = aws_vpc.cidr.cidr_block
}
output "vpc_id" {
    value = aws_vpc.cidr.id
}

output "private_subnet_id" {
    value = aws_subnet.private_subnet.id
}


output "public_subnet_id" {
    value = aws_subnet.public_subnet.id
}
