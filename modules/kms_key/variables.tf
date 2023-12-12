variable "alias" {
  default = "alias/keykms"
}

variable "deletion_window_in_days" {
    type = number
    default = 7
}

variable "description" {
    type = string
    default = "Default description of kms key" 
}

variable "region" {
    type = string
    default = "us-east-1"
}