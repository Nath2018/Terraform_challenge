variable "vpc_cidr" {
    type = string
    }

variable "region" {
    type = string
    description = "name of the region"
}
variable "private_subnet_cidr" {
    type = string
    description = "cidr of the private subnet"
}

variable "public_subnet_cidr" {
    type = string
    description = "cidr of the public subnet"
}