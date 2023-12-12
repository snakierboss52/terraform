output "key_alias" {
    value = module.kms_key.alias
}

output "key_arn" {
    value = module.kms_key.id
}