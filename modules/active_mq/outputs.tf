output "configuration_id" {
  value = aws_mq_configuration.broker_conf.id
}

output "broker_id" {
  value = aws_mq_broker.broker.id
}