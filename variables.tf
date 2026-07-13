variable "virtual_desktop_host_pool_registration_infos" {
  description = <<EOT
Map of virtual_desktop_host_pool_registration_infos, attributes below
Required:
    - expiration_date
    - hostpool_id
EOT

  type = map(object({
    expiration_date = string
    hostpool_id     = string
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

