variable "ami" {
  description = "Ubuntu ami 22.04"
  default = "ami-02f3416038bdb17fb"
}

variable "instance_type" {
  default = "t3a.micro"
}

variable "environment" {
  default = "dev"
}

variable "ec2_name" {
  default = "ubuntu-test"
}

variable "subnet_id" {
  default = "subnet-002d2e50b654b785d"
}

variable "key_name" {
  default = "ec2-fleet-spot"
}

variable "region" {
  default = "us-east-2"
}

variable "vpc_security_group_ids" {
  default = [
        "sg-071ddb6e180403d6d",
        "sg-008147fcd4cb59119",
        "sg-0592297a0ed925cd8", 
        "sg-08e853b10d043026b", 
        "sg-0275f8a92f9de6f39"
    ]
}