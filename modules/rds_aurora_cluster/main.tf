resource "aws_rds_cluster" "default" {
  cluster_identifier          = var.cluster_identifier
  engine                      = var.engine
  engine_version              = var.engine_version
  availability_zones          = var.availability_zones
  database_name               = var.database_name
  master_username             = var.master_username
  master_password             = var.master_password
  deletion_protection         = var.deletion_protection
  allow_major_version_upgrade = var.allow_major_version_upgrade
  backup_retention_period     = var.backup_retention_period
  preferred_backup_window     = var.preferred_backup_window
}