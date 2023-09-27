resource "helm_release" "redis" {
  name             = "redis"
  chart            = "${path.module}/${var.REDIS_CHART}"
  namespace        = var.REDIS_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  timeout          = var.redis_install_timeout
}