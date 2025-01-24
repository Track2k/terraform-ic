output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_1a" {
  value =  module.vpc.public_subnet_1a
}

output "public_ip" {
  value = module.ec2.public_ip
}
