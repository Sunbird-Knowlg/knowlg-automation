variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#REDIS
variable "NGINX_CHART" {
  description = "NGINX Instance Running Namespace"
  default = "nginx-ingress-helm-chart"
}

variable "NGINX_NAMESPACE" {
  description = "NGINX Instance Running Namespace"
  default     = "knowlg"
}

variable "nginx_install_timeout" {
  type        = number
  description = "Redis chart install timeout."
  default     = 1200
}