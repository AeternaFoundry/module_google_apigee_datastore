resource "google_apigee_datastore" "apigee_datastores" {
  for_each = var.apigee_datastores

  display_name    = each.value.display_name
  org_id          = each.value.org_id
  target_type     = each.value.target_type
  deletion_policy = each.value.deletion_policy

  datastore_config {
    bucket_name  = each.value.datastore_config.bucket_name
    dataset_name = each.value.datastore_config.dataset_name
    path         = each.value.datastore_config.path
    project_id   = each.value.datastore_config.project_id
    table_prefix = each.value.datastore_config.table_prefix
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

