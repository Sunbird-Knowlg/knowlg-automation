variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#SEARCH
variable "SEARCH_CHART" {
  description = "Search Instance Running Namespace"
  default     = "search-helm-chart"
}

variable "SEARCH_NAMESPACE" {
  description = "Search Instance Running Namespace"
  default     = "knowlg-api"
}

variable "search_chart_custom_values_yaml" {
  type        = string
  description = "search chart values.yaml path."
  default     = "search.yaml.tfpl"
}

variable "schema_base_path" {
  type        = string
  description = "Schema base path"
}