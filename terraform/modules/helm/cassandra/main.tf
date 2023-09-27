resource "helm_release" "cassandra" {
  name             = "cassandra"
  chart            ="${path.module}/${var.CASSANDRA_CHART}"
  namespace        = var.CASSANDRA_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  timeout          = var.cassandra_install_timeout

}
