variable "env" {
    type        = string
    description = "Environment name. All resources will be prefixed with this value."
}

variable "building_block" {
    type        = string
    description = "Building block name. All resources will be prefixed with this value."
}

#DIAL
variable "DIAL_CHART" {
  description = "Dial Instance Running Namespace"
  default     = "dial-helm-chart"
}

variable "DIAL_NAMESPACE" {
  description = "Dial Instance Running Namespace"
  default     = "knowlg-api"
}