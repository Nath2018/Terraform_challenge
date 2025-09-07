module "storage" {
    source = "../../modules/storage"
    bucket_name = var.bucket_name
    tags = var.tags
    region = var.region
}
module "network" {
    source = "../../modules/network"
    vpc_cidr = var.vpc_cidr
    a_subnet_cidr = var.a_subnet_cidr
    b_subnet_cidr = var.b_subnet_cidr
    region = var.region
}
module "compute" {
    source = "../../modules/compute"
    environment = var.environment
    instance_defs = {
        public = {
            subnet_id = module.network.aws_subnet_public_id
            name = "${var.environment}-public-ec2"
            #instance_type = var.instance_type
        }
        private = {
            subnet_id = module.network.aws_subnet_private_id
            name = "${var.environment}-private-ec2"
            #instance_type = var.instance_type
        }
    }
    ami = var.ami
    instance_type = var.instance_type
}

