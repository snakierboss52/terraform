output "arn" {
  value       = aws_ssm_parameter.main.arn
  description = "The ARN of the parameter"
}

output "name" {
  value       = aws_ssm_parameter.main.name
  description = "The name of the parameter"
}

output "description" {
  value       = aws_ssm_parameter.main.description
  description = "The description of the parameter"
}

output "type" {
  value       = aws_ssm_parameter.main.type
  description = "The type of the parameter"
}

output "version" {
  value       = aws_ssm_parameter.main.version
  description = "The version of the parameter"
}