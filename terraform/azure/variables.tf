variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
    default     = "dev"
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
    default     = "knowlg"
}

variable "flink_checkpoint_store_type" {
    type        = string
    description = "Flink checkpoint store type."
    default     = "azure"
}

variable "flink_container_registry" {
  type        = string
  description = "Container registry. For example docker.io/obsrv"
  default     = "manjudr"
}

variable "flink_image_tag" {
   type        = string
   description = "Flink kubernetes service name."
   default     = "2.1"
}

variable "cloud_storage_type" {
  type        = string
  description = "Cloud storage type"
  default     = "azure"
}