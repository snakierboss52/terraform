variable "name" {
  type        = string
  description = "The name of the parameter"
}

variable "type" {
  type        = string
  default     = "String"
  description = "The type of the parameter - String | StringList | SecureString"
}

variable "value" {
  type        = string
  sensitive   = true
  description = "The value of the parameter"
}

variable "description" {
  type        = string
  default     = null
  description = "The description of the parameter"
}

variable "tier" {
  type        = string
  default     = "Standard"
  description = "The tier of the parameter - Standard | Advanced | Intelligent-Tiering"
}

variable "key_id" {
  type        = string
  default     = null
  description = "The KMS key id or arn for encrypting a SecureString"
}

variable "overwrite" {
  type        = bool
  default     = false
  description = "Overwrite an existing parameter"
}

variable "allowed_pattern" {
  type        = string
  default     = null
  description = "A regular expression used to validate the parameter value"
}

variable "data_type" {
  type        = string
  default     = "text"
  description = "The data type of the parameter - text | aws:ec2:image"
}

variable "environment" {
  type        = string
  default     = null
  description = "Environment which the parameter is going to be deployed"
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "A map of tags to assign to the object"
}