module "vpc" {
  source = "./modules/vpc"
}

  module "ec2" {
    source  = "./modules/ec2"  # Path to your EC2 module
    vpc_id  = module.vpc.vpc_id
    subnet_id =  module.vpc.public_subnet_1a 
  }

  