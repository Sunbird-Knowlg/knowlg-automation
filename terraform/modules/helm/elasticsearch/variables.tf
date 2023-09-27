variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#ELASTICSEARCH
variable "ELASTICSEARCH_CHART" {
  description = "Elasticsearch Instance Running Namespace"
  default     = "elasticsearch-helm-chart"
}

variable "ELASTICSEARCH_NAMESPACE" {
  description = "Elasticsearch Instance Running Namespace"
  default     = "knowlg-db"
}

variable "elasticsearch_install_timeout" {
  type        = number
  description = "Redis chart install timeout."
  default     = 1200
}