module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source  = "./modules/ec2" 
  vpc_id  = module.vpc.vpc_id
  subnet_id =  module.vpc.public_subnet_1a 
}

module "rds" {
  source = "./modules/rds"
  private_subnet_1a = module.vpc.private_subnet_1a
  private_subnet_1b = module.vpc.private_subnet_1b
  private_subnet_1c = module.vpc.private_subnet_1c
  vpc_id            = module.vpc.vpc_id
}

