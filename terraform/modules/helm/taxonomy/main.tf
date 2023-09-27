resource "helm_release" "taxonomy" {
  name             = "taxonomy"
  chart            = "${path.module}/${var.TAXONOMY_CHART}"
  namespace        = var.TAXONOMY_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  values = [
    templatefile("${path.module}/${var.taxonomy_chart_custom_values_yaml}",
      {
        schema_base_path = "${var.schema_base_path}"
      }
    )
  ]
}
 