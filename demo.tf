provider "aws" {
  region     = "eu-north-1"
  access_key = "AKIA25V72HX5FW7UTDXT"
  secret_key = "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"
}
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
