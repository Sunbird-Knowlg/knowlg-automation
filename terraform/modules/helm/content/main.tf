resource "helm_release" "content" {
  name             = "content"
  chart            = "${path.module}/${var.CONTENT_CHART}"
  namespace        = var.CONTENT_NAMESPACE
  create_namespace = true
  dependency_update = true
  wait_for_jobs    = true
  values = [
    templatefile("${path.module}/${var.content_chart_custom_values_yaml}",
      {
        cloud_storage_type = "${var.cloud_storage_type}"
        cloud_storage_key = "${var.cloud_storage_key}"
        cloud_storage_secret = "${var.cloud_storage_secret}"
        cloud_storage_container = "${var.cloud_storage_container}"
        schema_base_path = "${var.schema_base_path}"
      }
    )
  ]
}
