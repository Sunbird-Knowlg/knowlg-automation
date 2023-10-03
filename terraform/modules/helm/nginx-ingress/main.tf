resource "helm_release" "nginx-ingress" {
  name             = "nginx-ingress"
  chart            = "${path.module}/${var.NGINX_CHART}"
  namespace        = var.NGINX_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  timeout          = var.nginx_install_timeout
}