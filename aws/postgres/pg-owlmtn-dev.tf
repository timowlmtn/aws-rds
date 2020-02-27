provider "aws" {
  	version = "~> 2.7"
  	region = var.region
	profile = "default-owlmtn"
}


resource "aws_db_instance" "default" {
  identifier           = "pg-owlmtn-dev"
  snapshot_identifier  = "pg-owlmtn-1"

  instance_class       = "db.t2.micro"
  db_subnet_group_name = var.db_subnet_group_name
  publicly_accessible = true

  # This is to let Terraform know to ignore snapshot changes.
  lifecycle {
    ignore_changes = ["snapshot_identifier"]
  }

  final_snapshot_identifier = "PostgresOwlmtnDev"

  vpc_security_group_ids = var.vpc_security_group_ids
}