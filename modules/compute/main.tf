resource "aws_instance" "my_private_ec2" {
    instance_type = var.instance_type
    ami = var.ami
    #subnet_id = var.subnet_a.id
    #subnet_id = aws_subnet_private_id
}

resource "aws_instance" "my_public_ec2" {
    instance_type = var.instance_type
    ami = var.ami
    #subnet_id = var.subnet_b.id
}