output "s3_bucket_name" {
    description = "the name of the bucket created"
    value = module.storage.bucket_name
     }

output "s3_bucket_arn" {
    description = "the arn of the bucket created"
    value = module.storage.bucket_arn
}

output "s3_bucket_id" {
    description = "the acl of the bucket created"
    value = module.storage.bucket_id
}
output "s3_bucket_tags" {
    value = module.storage.bucket_tags
}
output "vpc_cidr_block" {
    value = module.network.aws_vpc
}
output "aws_private_subnet_id" {
    value = module.network.aws_subnet_private
}
output "aws_private_subnet_cidr" {
    value = module.network.aws_subnet_private_cidr
}

output "aws_public_subnet_id" {
    value = module.network.aws_subnet_public
}
output "aws_public_subnet_cidr" {
    value = module.network.aws_subnet_public_cidr
}