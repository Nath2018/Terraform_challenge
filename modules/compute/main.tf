resource "aws_instance" "my_private_ec2" {
    instance_type = var.instance_type
    ami = var.ami
    #subnet_id = module.network.subnet_a.id
    subnet_id = var.private_subnet_id
    #subnet_id = aws_subnet_private_id
}

resource "aws_instance" "my_public_ec2" {
    instance_type = var.instance_type
    ami = var.ami
    #subnet_id = module.network.subnet_b.id
    subnet_id = var.public_subnet_id
    #security_groups = "../../modules.network.public_sg[aws_security_group.public_sg.id]"
    security_groups = [var.public_sg_id]
    associate_public_ip_address = true
}