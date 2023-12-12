variable "alias" {
    default = "alias/kms_key_test"
}

variable "description" {
    default = "AWS kms test from terraform"
}

variable "deletion_window_in_days" {
    default = 7
}

variable "region" {
    default = "us-east-1"
}