variable "kind_cluster_name" {
  type        = string
  description = "The name of the cluster."
  default     = "one-click"
}

variable "kind_cluster_config_path" {
  type        = string
  description = "The location where this cluster's kubeconfig will be saved to."
  default = "~/.kube/config"
}

variable "kube_config_context" {
  type        = string
  description = "The config context in kubeconfig"
  default = "kind-one-click"
 }

variable "ingress_nginx_helm_version" {
  type        = string
  description = "The Helm version for the nginx ingress controller."
  default     = "4.0.6"
}

variable "ingress_nginx_namespace" {
  type        = string
  description = "The nginx ingress namespace (it will be created if needed)."
  default     = "ingress-nginx"
}


variable "STAGE" {
  description = "Deployment Stage"
  default     = "dev"
}

#KAFKA
variable "KAFKA_CHART" {
  description = "Kafka Instance Running Namespace"
  default     = "../modules/helm/kafka/kafka-helm-chart"
}

variable "KAFKA_NAMESPACE" {
  description = "Kafka Instance Running Namespace"
  default     = "knowlg-db"
}

#NEO4J
variable "NEO4J_CHART" {
  description = "Neo4j Instance Running Namespace"
  default = "../modules/helm/neo4j/neo4j-helm-chart"
}

variable "NEO4J_NAMESPACE" {
  description = "NEO4J Instance Running Namespace"
  default     = "knowlg-db"
}

#CASSANDRA
variable "CASSANDRA_CHART" {
  description = "Cassandra Instance Running Namespace"
  default = "../modules/helm/cassandra/cassandra-helm-chart"
}

variable "CASSANDRA_NAMESPACE" {
  description = "CASSANDRA Instance Running Namespace"
  default     = "knowlg-db"
}

#ELASTICSEARCH
variable "ELASTICSEARCH_CHART" {
  description = "Elasticsearch Instance Running Namespace"
  default     = "../modules/helm/elasticsearch/elasticsearch-helm-chart"
}

variable "ELASTICSEARCH_NAMESPACE" {
  description = "Elasticsearch Instance Running Namespace"
  default     = "knowlg-db"
}

#REDIS
variable "REDIS_CHART" {
  description = "Redis Instance Running Namespace"
  default = "../modules/helm/redis/redis-helm-chart"
}

variable "REDIS_NAMESPACE" {
  description = "Redis Instance Running Namespace"
  default     = "knowlg-db"
}


#TAXONOMY
variable "TAXONOMY_CHART" {
  description = "Taxonomy Instance Running Namespace"
  default     = "../modules/helm/taxonomy/taxonomy-helm-chart"
}

variable "TAXONOMY_NAMESPACE" {
  description = "Taxonomy Instance Running Namespace"
  default     = "knowlg-api"
}

#CONTENT
variable "CONTENT_CHART" {
  description = "Content Instance Running Namespace"
  default     = "../modules/helm/content/content-helm-chart"
}

variable "CONTENT_NAMESPACE" {
  description = "Content Instance Running Namespace"
  default     = "knowlg-api"
}

#SEARCH
variable "SEARCH_CHART" {
  description = "Search Instance Running Namespace"
  default     = "../modules/helm/search/search-helm-chart"
}

variable "SEARCH_NAMESPACE" {
  description = "Search Instance Running Namespace"
  default     = "knowlg-api"
}

#DIAL
variable "DIAL_CHART" {
  description = "Dial Instance Running Namespace"
  default     = "../modules/helm/dial/dial-helm-chart"
}

variable "DIAL_NAMESPACE" {
  description = "Dial Instance Running Namespace"
  default     = "knowlg-api"
}

#FLINK
variable "flink_release_name" {
    type        = string
    description = "Flink helm release name."
    default     = "qrcode-image-generator"
}

variable "flink_namespace" {
    type        = string
    description = "Flink namespace."
    default     = "knowlg-job"
}

variable "flink_chart_path" {
    type        = string
    description = "Flink chart path."
    default     = "../modules/helm/flink/flink-helm-chart"
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
    default     = "../terraform_helm_templates/flink.yaml.tfpl"
}

variable "flink_kubernetes_service_name" {
    type        = string
    description = "Flink kubernetes service name."
    default     = "qrcode-image-generator-jobmanager"
}