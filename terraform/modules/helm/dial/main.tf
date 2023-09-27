resource "helm_release" "dial" {
  name             = "dial"
  chart            = "${path.module}/${var.DIAL_CHART}"
  namespace        = var.DIAL_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true

}