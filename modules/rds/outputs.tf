output "aws_db_instance_id" {
  value = aws_db_instance.tf_rds_instance.id
  
}

output "aws_db_instance_address" {
  value = aws_db_instance.tf_rds_instance.address
}