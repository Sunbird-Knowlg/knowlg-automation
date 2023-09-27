resource "helm_release" "flink" {
    count            = length(var.flink_release_name)
    name             = var.flink_release_name[count.index]
    chart            = "${path.module}/${var.flink_chart}"
    namespace        = "${var.flink_namespace}"
    create_namespace = var.flink_create_namespace
    wait_for_jobs    = var.flink_wait_for_jobs
    timeout          = var.flink_chart_install_timeout
    values = [
    templatefile("${path.module}/${var.flink_chart_custom_values_yaml}",
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