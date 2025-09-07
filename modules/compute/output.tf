output "public_instance_id" {
    value = aws_instance.my_public_ec2.id
}
output "private_instance_id" {
    value = aws_instance.my_private_ec2.id
}
