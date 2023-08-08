variable "name" {
  type        = string
  description = "El nombre de la configuracion"
}

variable "environment" {
  description = "The current AWS Environment. Can be dev or prod."
}

variable "description" {
  type        = string
  default     = "Este es mi configuracion con terraform"
  description = "Descripcion de la configuracion de ActiveMQ"
}

variable "engine_type" {
  type        = string
  description = "El tipo de maquina del broker"
}

variable "engine_version" {
  type        = string
  description = "Version de la maquina"
}

variable "data" {
  description = "Xml con la configuracion del broker"
}

variable "broker_name" {
  description = "Nombre del broker"
}

variable "host_instance_type" {
  type        = string
  default     = "mq.t3.micro"
  description = "Host de la instancia"
}

variable "security_groups" {
  type        = list(string)
  default     = []
  description = "Security groups broker"
}

variable "mq_admin_user" {
  type        = string
  default     = null
  description = "Usuario admin"
}

variable "mq_admin_password" {
  type        = string
  default     = null
  description = "Admin password"
}

variable "mq_application_user" {
  type        = string
  default     = null
  description = "Usuario de aplicacion"
}

variable "mq_application_password" {
  type        = string
  default     = null
  description = "password del usuario dela aplicacion"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Lista de subnets"
}

variable "publicly_accessible" {
  type        = bool
  default     = true
  description = "Si es accesible a aplicaciones por fuera de la VPC"
}

variable "deployment_mode" {
  default     = "SINGLE_INSTANCE"
  description = "La forma de desplegar el deployment"
}

variable "squad" {
  description = "A cual squad esta asociado el broker"
}

variable "apply_immediately" {
  type        = bool
  default     = true
  description = "Especifica si los cambios se aplican inmediatamente o cada vez que se haga mantenimiento"
}