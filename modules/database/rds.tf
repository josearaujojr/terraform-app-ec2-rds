resource "aws_db_subnet_group" "app_dbsbng" {
  name       = "${var.project_name}-app-dbsbng"
  subnet_ids = [var.app_subnet_public_1b, var.app_subnet_public_1a]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-app_dbsbng"
    }
  )
}

resource "aws_db_instance" "app_rds" {
  allocated_storage    = 20
  db_name              = "databaseapp"
  engine               = "mysql"
  engine_version       = "8.0.35"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "admin123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = false
  multi_az             = false
  db_subnet_group_name = aws_db_subnet_group.app_dbsbng.name

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-database"
    }
  )

}