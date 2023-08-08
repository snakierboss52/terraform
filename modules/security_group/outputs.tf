output "id" {
  value       = aws_security_group.main.id
  description = "The ID of the security group"
}

output "arn" {
  value       = aws_security_group.main.arn
  description = "The ARN of the security group"
}

output "vpc_id" {
  value       = aws_security_group.main.vpc_id
  description = "The VPC ID"
}

output "owner_id" {
  value       = aws_security_group.main.owner_id
  description = "The owner ID"
}

output "name" {
  value       = aws_security_group.main.name
  description = "The name of the security group"
}

output "description" {
  value       = aws_security_group.main.description
  description = "The description of the security group"
}

output "ingress" {
  value       = aws_security_group.main.ingress
  description = "The ingress rules of the security group"
}

output "egress" {
  value       = aws_security_group.main.egress
  description = "The egress rules of the security group"
}