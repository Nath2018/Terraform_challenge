output "aws_vpc" {
    value = aws_vpc.cidr.cidr_block
}

output "aws_subnet_private_id" {
    value = aws_subnet.subnet_a.id
}

output "aws_subnet_private_cidr" {
    value = aws_subnet.subnet_a.cidr_block
}
output "aws_subnet_public_id" {
    value = aws_subnet.subnet_b.id
}

output "aws_subnet_public_cidr" {
    value = aws_subnet.subnet_b.cidr_block
}
