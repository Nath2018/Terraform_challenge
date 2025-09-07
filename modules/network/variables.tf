variable "vpc_cidr" {
    type = string
    }

variable "region" {
    type = string
    description = "name of the region"
}
variable "a_subnet_cidr" {
    type = string
    description = "cidr of the private subnet"
}

variable "b_subnet_cidr" {
    type = string
    description = "cidr of the public subnet"
}