variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#CONTENT
variable "CONTENT_CHART" {
  description = "Content Instance Running Namespace"
  default     = "content-helm-chart"
}

variable "CONTENT_NAMESPACE" {
  description = "Content Instance Running Namespace"
  default     = "knowlg-api"
}

variable "content_chart_custom_values_yaml" {
  type        = string
  description = "content chart values.yaml path."
  default     = "content.yaml.tfpl"
}

variable "cloud_storage_type" {
  type        = string
  description = "Cloud storage type"
}

variable "cloud_storage_key" {
  type        = string
  description = "Cloud storage key"
}

variable "cloud_storage_secret" {
  type        = string
  description = "Cloud storage secret"
}

variable "cloud_storage_container" {
  type        = string
  description = "Cloud storage secret"
}

variable "schema_base_path" {
  type        = string
  description = "Schema base path"
}