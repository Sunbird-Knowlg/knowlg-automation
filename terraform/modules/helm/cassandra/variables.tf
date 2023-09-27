variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#CASSANDRA
variable "CASSANDRA_CHART" {
  description = "Cassandra Instance Running Namespace"
  default = "cassandra-helm-chart"
}

variable "CASSANDRA_NAMESPACE" {
  description = "CASSANDRA Instance Running Namespace"
  default     = "knowlg-db"
}

variable "cassandra_install_timeout" {
  type        = number
  description = "cassandra chart install timeout."
  default     = 1200
}