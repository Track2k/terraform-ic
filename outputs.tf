output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_1a" {
  value = module.vpc.public_subnet_1a
}

# output "public_ip" {
#   value = module.ec2.public_ip
# }

output "rds_instance_id" {
  value = module.rds.aws_db_instance_id
}

output "private_db_endpoint" {
  value = module.rds.aws_db_instance_address
}