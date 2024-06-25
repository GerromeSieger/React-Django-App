
resource "aws_db_instance" "newdatabase" {
  allocated_storage    = var.database_config.allocated_storage
  db_name              = var.database_config.db_name
  engine               = var.database_config.engine
  engine_version       = var.database_config.engine_version
  instance_class       = var.database_config.instance_class
  username             = var.database_config.username
  password             = var.database_config.password
  parameter_group_name = var.database_config.parameter_group_name
  skip_final_snapshot  = var.database_config.skip_final_snapshot
}
