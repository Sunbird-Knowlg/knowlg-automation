variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

variable "flink_namespace" {
  type        = string
  description = "Flink namespace."
  default     = "knowlg-job"
}

variable "flink_chart" {
  type        = string
  description = "Flink chart path."
  default     = "flink-helm-chart"
}

variable "flink_chart_install_timeout" {
  type        = number
  description = "Flink chart install timeout."
  default     = 900
}

variable "flink_create_namespace" {
  type        = bool
  description = "Create flink namespace."
  default     = true
}

variable "flink_wait_for_jobs" {
  type        = bool
  description = "Flink wait for jobs paramater."
  default     = false
}

variable "flink_chart_template" {
  type        = string
  description = "Flink chart values.yaml path."
  default     = "flink.yaml.tfpl"
}

variable "flink_kubernetes_service_name" {
  type        = string
  description = "Flink kubernetes service name."
  default     = ""
}

variable "flink_release_name" {
  type        = list(string)
  description = "Flink helm release name."
  default     = ["content-publish", "search-indexer","transaction-event-processor","asset-enrichment","post-publish-processor","dialcode-context-updater", "qrcode-image-generator","video-stream-generator"]
}

variable "flink_chart_custom_values_yaml" {
  type        = string
  description = "flink chart values.yaml path."
  default     = "flink.yaml.tfpl"
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