locals {
  mq_admin_user           = var.mq_admin_user != null && var.mq_admin_user != "" ? var.mq_admin_user : join("", random_string.mq_admin_user.*.result)
  mq_admin_password       = var.mq_admin_password != null && var.mq_admin_password != "" ? var.mq_admin_password : join("", random_password.mq_admin_password.*.result)
  mq_application_user     = var.mq_application_user != null && var.mq_application_user != "" ? var.mq_application_user : join("", random_string.mq_application_user.*.result)
  mq_application_password = var.mq_application_password != null && var.mq_application_password != "" ? var.mq_application_password : join("", random_password.mq_application_password.*.result)
}

resource "random_string" "mq_admin_user" {
  count   = var.mq_admin_user == null || var.mq_admin_user == "" ? 1 : 0
  length  = 8
  special = false
  number  = false
}

resource "random_password" "mq_admin_password" {
  count   = var.mq_admin_password == null || var.mq_admin_password == "" ? 1 : 0
  length  = 16
  special = false
}

resource "random_string" "mq_application_user" {
  count   = var.mq_application_user == null || var.mq_application_user == "" ? 1 : 0
  length  = 8
  special = false
  number  = false
}

resource "random_password" "mq_application_password" {
  count   = var.mq_application_password == null || var.mq_application_password == "" ? 1 : 0
  length  = 16
  special = false
}

resource "aws_mq_configuration" "broker_conf" {
  description    = var.description
  name           = var.name
  engine_type    = var.engine_type
  engine_version = var.engine_version

  data = var.data
}

resource "aws_mq_broker" "broker" {
  broker_name = var.broker_name

  configuration {
    id       = aws_mq_configuration.broker_conf.id
    revision = aws_mq_configuration.broker_conf.latest_revision
  }

  engine_type         = var.engine_type
  engine_version      = var.engine_version
  host_instance_type  = var.host_instance_type
  security_groups     = var.security_groups
  publicly_accessible = var.publicly_accessible
  subnet_ids          = var.subnet_ids
  apply_immediately   = var.apply_immediately
  deployment_mode     = var.deployment_mode

  user {
    username       = local.mq_admin_user
    password       = local.mq_admin_password
    console_access = true
  }

  user {
    username = local.mq_application_user
    password = local.mq_application_password
  }

  tags = {
    Name        = var.broker_name
    Environment = var.environment
    Terraform   = true
    Squad       = var.squad
  }
}