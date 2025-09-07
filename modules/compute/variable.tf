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
variable "instance_defs" {
    type = map(object({
        subnet_id = string
        name = string
    }))
}