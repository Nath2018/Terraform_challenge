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
variable "a_subnet_cidr" {
    type = string
    description = "name of the private subnet"
}

variable "b_subnet_cidr" {
    type = string
    description = "name of the public subnet"
}