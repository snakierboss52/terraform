variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "name" {
  type        = string
  description = "The name of the security group"
}

variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "The security group description"
}

variable "environment" {
  type        = string
  default     = null
  description = "Environment in which this security group will be deployed"
}

variable "revoke_rules_on_delete" {
  type        = bool
  default     = false
  description = "Whether revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to assign to the resource"
}

variable "ingress_rules" {
  type = list(any)
  default = [
    {
      description      = "Localhost"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["172.0.0.1/32"]
      ipv6_cidr_blocks = ["::1/128"]
      prefix_list_ids  = null
      security_groups  = null
      self             = false
    },
    {
      description      = "Localhost"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["172.0.0.1/32"]
      ipv6_cidr_blocks = ["::1/128"]
      prefix_list_ids  = null
      security_groups  = null
      self             = false
    }
  ]
  description = "Ingress rules"
}

variable "egress_rules" {
  type = list(any)
  default = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]
  description = "Egress rules"
}