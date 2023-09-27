variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#REDIS
variable "REDIS_CHART" {
  description = "Redis Instance Running Namespace"
  default = "redis-helm-chart"
}

variable "REDIS_NAMESPACE" {
  description = "Redis Instance Running Namespace"
  default     = "knowlg-db"
}

variable "redis_install_timeout" {
  type        = number
  description = "Redis chart install timeout."
  default     = 1200
}