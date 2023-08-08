variable "cluster_identifier" {
  type        = string
  description = "The name of the RDS Cluster"
}

variable "engine" {
  type        = string
  description = "The engine for the RDS Cluster: aurora-mysql | aurora-postgresql"
  default     = "aurora-mysql"
}

variable "engine_version" {
  type        = string
  description = "The version of the engine for the RDS Cluster"
  default     = "5.7.mysql_aurora.2.03.2"
}

variable "availability_zones" {
  type        = list
  description = "The list of the availability zones for the RDS cluster"
  default     = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"
  ]
}

variable "database_name" {
  type        = string
  description = "The name of the database"
  default     = ""
}

variable "master_username" {
  type        = string
  description = "Master username for RDS cluster"
  default     = ""
}

variable "master_password" {
  type        = string
  description = "Master password for RDS cluster"
  default     = ""
}

variable "backup_retention_period" {
  type        = number
  description = "Days to retain the backups"
  default     = 3
}

variable "preferred_backup_window" {
  type        = string
  description = "Backup window schedule"
  default     = "07:00-09:00"
}

variable "allow_major_version_upgrade" {
  type        = bool
  description = "Flag to allow major version upgrades"
  default     = false
}

variable "deletion_protection" {
  type        = bool
  description = "If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to True"
  default     = true
}