resource "aws_db_instance" "main" {
  identifier             = var.db_identifier
  allocated_storage      = var.allocated_storage
  max_allocated_storage  = var.max_allocated_storage
  db_name                = var.database_name
  engine                 = "postgres"
  engine_version         = "16"
  instance_class         = var.db_instance_class
  username               = var.db_root_username
  password               = var.db_root_password
  skip_final_snapshot    = true
  apply_immediately      = var.apply_immediately
  publicly_accessible    = var.publicly_accessible
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.security_group_ids
  deletion_protection    = var.deletion_protection
  tags = {
    Owner       = "Data Platform Team"
    Environment = "Production"
  }
}