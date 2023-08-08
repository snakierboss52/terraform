module "ec2-instance" {
  source                 = "../../modules/ec2_instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  ec2_name               = var.ec2_name
  environment            = var.environment
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
}