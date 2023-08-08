output "arn" {
  value = aws_instance.ec2.arn
}

output "instance_state" {
  value = aws_instance.ec2.instance_state
}

output "public_dns" {
  value = aws_instance.ec2.public_dns
}

output "public_ip" {
  value = aws_instance.ec2.public_ip
}

output "capacity_reservation_specification" {
  value = aws_instance.ec2.capacity_reservation_specification
}
