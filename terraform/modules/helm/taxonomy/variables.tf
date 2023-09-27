variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#TAXONOMY
variable "TAXONOMY_CHART" {
  description = "Taxonomy Instance Running Namespace"
  default     = "taxonomy-helm-chart"
}

variable "TAXONOMY_NAMESPACE" {
  description = "Taxonomy Instance Running Namespace"
  default     = "knowlg-api"
}

variable "taxonomy_chart_custom_values_yaml" {
  type        = string
  description = "taxonomy chart values.yaml path."
  default     = "taxonomy.yaml.tfpl"
}

variable "schema_base_path" {
  type        = string
  description = "Schema base path"
}