resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  hash_key       = var.hash_key
  billing_mode   = var.billing_mode
  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }
  dynamic "ttl" {
    for_each = local.ttl
    content {
      enabled        = local.ttl[0].ttl_enable
      attribute_name = local.ttl[0].ttl_attribute
    }
  }
  tags = {
    Name        = "${var.table_name}-DT"
    Environment = var.environment
    Team        = var.team
    Project     = var.project
    Terraform   = "true"
  }
}