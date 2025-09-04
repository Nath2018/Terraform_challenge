resource "aws_vpc" "cidr" {
     cidr_block = var.vpc_cidr
     region = var.region

     tags = {
        name = "first_vpc"
     }
}
resource "aws_subnet" "subnet_a" {
    vpc_id = aws_vpc.cidr.id
    cidr_block = var.a_subnet_cidr

    tags = {
        name = "private_subnet"
     }
}

resource "aws_subnet" "subnet_b" {
    vpc_id = aws_vpc.cidr.id
    cidr_block = var.b_subnet_cidr

    tags = {
        name = "public_subnet"
     }
}