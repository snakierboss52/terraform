output name {
    description = "Name of the instance created"
    value = var.ec2_name
}

output name {
    description = "Key pair name used in ec2 instance"
    value = var.key_name
    sensitive = true   
}