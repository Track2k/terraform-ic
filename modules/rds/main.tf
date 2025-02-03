resource "aws_db_instance" "tf_rds_instance" {
  count = 1
  db_name                = "manjunath5tf5db"
  engine                 = "postgres"
  engine_version         = "16.3"
  instance_class         = "db.t3.micro"
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.postgres16"
  publicly_accessible    = false
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds-sg.id]
  db_subnet_group_name   = aws_db_subnet_group.private-db-group.name
  allocated_storage      = 20

  tags = {
    Name = "Manjunath-TF-RDS"
  }
}

resource "aws_db_subnet_group" "private-db-group" {
  name       = "private-db-group"
  subnet_ids = [var.private_subnet_1a, var.private_subnet_1b, var.private_subnet_1c]
} 

resource "aws_security_group" "rds-sg" {
  name        = "manjunath-tf-rds-sg"
  description = "Allow traffic to RDS"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}