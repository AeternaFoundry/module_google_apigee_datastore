output "apigee_datastores_id" {
  description = "Map of id values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no id are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_datastores_create_time" {
  description = "Map of create_time values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no create_time are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "apigee_datastores_datastore_config" {
  description = "Map of datastore_config values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no datastore_config are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => one(v.datastore_config) if v.datastore_config != null && length(v.datastore_config) > 0 }
}
output "apigee_datastores_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_datastores_display_name" {
  description = "Map of display_name values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no display_name are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigee_datastores_last_update_time" {
  description = "Map of last_update_time values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no last_update_time are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.last_update_time if v.last_update_time != null && length(v.last_update_time) > 0 }
}
output "apigee_datastores_name" {
  description = "Map of name values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no name are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_datastores_org" {
  description = "Map of org values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no org are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.org if v.org != null && length(v.org) > 0 }
}
output "apigee_datastores_org_id" {
  description = "Map of org_id values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_datastores_self" {
  description = "Map of self values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no self are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.self if v.self != null && length(v.self) > 0 }
}
output "apigee_datastores_target_type" {
  description = "Map of target_type values across all apigee_datastores, keyed the same as var.apigee_datastores except keys with no target_type are omitted"
  value       = { for k, v in google_apigee_datastore.apigee_datastores : k => v.target_type if v.target_type != null && length(v.target_type) > 0 }
}

