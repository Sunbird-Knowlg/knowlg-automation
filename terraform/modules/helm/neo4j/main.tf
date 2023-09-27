resource "helm_release" "neo4j" {
  name             = "neo4j"
  chart            = "${path.module}/${var.NEO4J_CHART}"
  namespace        = var.NEO4J_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true

}