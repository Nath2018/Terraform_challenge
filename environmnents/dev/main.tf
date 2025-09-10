module "storage" {
    source = "../../modules/storage"
    bucket_name = var.bucket_name
    tags = var.tags
    region = var.region
}
module "network" {
    source = "../../modules/network"
    vpc_cidr = var.vpc_cidr
    #public_subnet_cidr = var.public_subnet_cidr
    #private_subnet_cidr = var.private_subnet_cidr
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    region = var.region
}
module "security" {
    source = "../../modules/security"
    vpc_id = module.network.vpc_id
}
module "compute" {
    source = "../../modules/compute"
    environment = var.environment
    public_sg_id = module.security.public_sg_id
    #instance_defs = {
    #    public = {
    #        subnet_id = module.network.aws_subnet_public_id
    #        name = "${var.environment}-public-ec2"
    #        #instance_type = var.instance_type
    #    }
    #    private = {
    #        subnet_id = module.network.aws_subnet_private_id
    #        name = "${var.environment}-private-ec2"
    #        #instance_type = var.instance_type
    #    }
    #}
    #public_subnet_cidr = module.network.subnet_public_cidr
    public_subnet_id = module.network.public_subnet_id
    public_instance_name = "${var.environment}-public-ec2"
    #private_subnet_cidr = module.network.subnet_private_cidr
    private_subnet_id = module.network.private_subnet_id
    private_instance_name = "${var.environment}-private-ec2"
    ami = var.ami
    instance_type = var.instance_type
}

