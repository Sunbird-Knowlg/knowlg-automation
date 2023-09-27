
resource "helm_release" "elasticsearch" {
  name             = "elasticsearch"
  chart            = "${path.module}/${var.ELASTICSEARCH_CHART}"
  namespace        = var.ELASTICSEARCH_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  timeout          = var.elasticsearch_install_timeout

}
