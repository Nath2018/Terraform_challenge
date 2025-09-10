resource "aws_vpc" "cidr" {
     cidr_block = var.vpc_cidr
     region = var.region

     tags = {
        name = "first_vpc"
     }
}

resource "aws_internet_gateway" "my_gw" {
    vpc_id = aws_vpc.cidr.id
    tags = {
        name = "igw_public"
    }

}
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.cidr.id
    cidr_block = var.private_subnet_cidr

    tags = {
        name = "private_subnet"
     }
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.cidr.id
    cidr_block = var.public_subnet_cidr

    tags = {
        name = "public_subnet"
     }
}

resource "aws_route_table" "my_rt" {
    vpc_id = aws_vpc.cidr.id
    route {
        cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gw.id
    }

    tags = {
        name = "public_subnet_rout"
     }
}
resource "aws_route_table_association" "public_association" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.my_rt.id
}