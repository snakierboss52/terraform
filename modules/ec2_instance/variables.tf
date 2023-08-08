variable "ami" {
    description = "AMI id to use in the ec2 instance"
    type        = string
}

variable "ec2_name" {
    description = "Name for the ec2 instance"
    type        = string
}

variable "instance_type" {
    description = "The instance type to use for the instance"
    type        = string
}

variable "environment" {
    description = "Environment to deploy the ec2 instance"
    type        = string
}

variable "vpc_security_group_ids" {
    description = "A list of security groups IDs to associate the ec2 instance"
    type        = list
}

variable "subnet_id" {
    description = "VPC subnet ID to launch the ec2 instance"
    type        = string
}

variable "key_name" {
    description = "Key name of the Key Pair to use in the ec2 instance"
    type        = string
}

variable "device_name" {
    description = "Name of the device to mount"
    type        = string
    default     = "/dev/sda1"
}

variable "delete_on_termination" {
    description = "Whether the volume should be destroyed on instance termination"
    type        = bool
    default     = true
}

variable "encrypted" {
    description = "Enable EBS encryption on the volume"
    type        = bool
    default     = false
}

variable "volume_size" {
    description = "Size of the volume in gigabtyes GiB"
    type        = string
    default     = "8"
}

variable "volume_type" {
    description = "Type of volume"
    type        = string
    default     = "gp3"
}