variable "instance_type" {
    type = string
    description = "using module"
}
variable "ami" {
    type = string
    description = "desc"
}
variable "public_subnet_id" {
    type = string
    description = "subnet ID to launch public ec2"
}
variable "private_subnet_id" {
    type = string
    description = "subnet ID to launch private ec2"
}
variable "private_instance_name" {
    type = string
    description = " privte imstance name "
}
variable "public_instance_name" {
    type = string
    description = " public imstance name "
}

variable "public_sg_id" {
    type = string
    description = "environments information"
}
variable "environment" {
    type = string
    description = "environments information"
}

#variable "instance_defs" {
#    type = map(object({
#        subnet_id = string
#        name = string
#    }))
#}