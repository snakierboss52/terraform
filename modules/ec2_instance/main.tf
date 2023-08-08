resource "aws_instance" "ec2" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id               = var.subnet.id
  key_name                = var.key_name
  vpc_security_group_ids  = var.vpc_security_groups_ids

  ebs_block_device {
    delete_on_termination = var.delete_on_termination
    device_name           = var.device_name
    encrypted             = var.encrypted
    volume_size           = var.volume_size
    volume_type           = var.volume_type
    tags = {
      Name        = "${var.ec2_name}-instance"
      Environment = var.environment
    }
  }
}