resource "helm_release" "search" {
  name             = "search"
  chart            = "${path.module}/${var.SEARCH_CHART}"
  namespace        = var.SEARCH_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  values = [
    templatefile("${path.module}/${var.search_chart_custom_values_yaml}",
      {
        schema_base_path = "${var.schema_base_path}"
      }
    )
  ]

}