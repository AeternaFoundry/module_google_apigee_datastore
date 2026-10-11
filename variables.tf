variable "apigee_datastores" {
  description = <<EOT
Map of apigee_datastores, attributes below
Required:
    - display_name
    - org_id
    - target_type
    - datastore_config (block):
        - bucket_name (optional)
        - dataset_name (optional)
        - path (optional)
        - project_id (required)
        - table_prefix (optional)
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    org_id          = string
    target_type     = string
    deletion_policy = optional(string)
    datastore_config = object({
      bucket_name  = optional(string)
      dataset_name = optional(string)
      path         = optional(string)
      project_id   = string
      table_prefix = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

