output "aws_db_instance_id" {
  value = [ for dbinstance in aws_db_instance.tf_rds_instance : dbinstance.id ]
  
}

output "aws_db_instance_address" {
  value = [ for dbinstanceaddress in aws_db_instance.tf_rds_instance : dbinstanceaddress.address ]
}