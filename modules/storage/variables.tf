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