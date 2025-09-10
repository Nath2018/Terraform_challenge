variable "bucket_name" {
    type = string
    description = "name of the s3 bucket variable"
}

variable "region" {
    type = string
    description = "name of the region"
}

variable "tags" {
    type = map(string)
    description = "tags value description"
}
variable "vpc_cidr" {
    type = string
    description = "name of the region"
}
variable "public_subnet_cidr" {
    type = string
    description = "name of the private subnet"
}
variable "private_subnet_cidr" {
    type = string
    description = "name of the public subnet"
}
variable "instance_type" {
    type = string
    description = "using module"
}
variable "ami" {
    type = string
    description = "desc"
}
variable "environment" {
    type = string
    description = "environments information"
}
