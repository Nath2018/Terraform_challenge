resource "aws_security_group" "public_sg" {
    name  = "public_sg"
    description = "allow ssh & http"
    #vpc_id = aws_vpc.cidr.id
    #vpc_id = aws_vpc.cidr.cidr_block.id
    #vpc_id = module.network.aws_vpc.cidr.cidr_block.id
    #vpc_id = module.network.aws_vpc.id
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "public_security_group_public_subnet_only"
    }
}