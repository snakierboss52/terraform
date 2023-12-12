variable "ami" {
  description = "Ubuntu ami 22.04"
  default = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "environment" {
  default = "dev"
}

variable "ec2_name" {
  default = "ubuntu-test"
}

variable "subnet_id" {
  default = "subnet-01337e6e80b2f251b"
}

variable "key_name" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}

variable "vpc_security_group_ids" {
  default = [
        "sg-07a2ba9eb5a6d5201",
        "sg-0bfb50f005ec16018"
    ]
}