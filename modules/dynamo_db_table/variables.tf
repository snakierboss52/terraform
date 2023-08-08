variable "table_name" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "hash_key" {
  type = string
}

variable "billing_mode" {
  type = string
  default = "PAY_PER_REQUEST"
}

variable "hash_key_type" {
  type    = string
  default = "S"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "team" {
  type    = string
  default = ""
}

variable "squad" {
  type    = string
  default = ""
}

variable "project" {
  type = string
}

variable "ttl" {
  type    = string
  default = null
}
