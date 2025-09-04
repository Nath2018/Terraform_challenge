module "storage" {
    source = "./modules/storage"
    bucket_name = var.bucket_name
    tags = var.tags
    region = var.region
}
module "network" {
    source = "./modules/network"
    vpc_cidr = var.vpc_cidr
    a_subnet_cidr = var.a_subnet_cidr
    b_subnet_cidr = var.b_subnet_cidr
    region = var.region
}

