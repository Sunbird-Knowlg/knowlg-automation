variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#NEO4J
variable "NEO4J_CHART" {
  description = "Neo4j Instance Running Namespace"
  default = "neo4j-helm-chart"
}

variable "NEO4J_NAMESPACE" {
  description = "NEO4J Instance Running Namespace"
  default     = "knowlg-db"
}