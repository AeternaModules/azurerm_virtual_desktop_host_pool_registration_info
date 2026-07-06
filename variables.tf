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
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_desktop_host_pool_registration_info's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: hostpool_id
  #   source:    [from hostpool.ValidateHostPoolID] !ok
  # path: hostpool_id
  #   source:    [from hostpool.ValidateHostPoolID] err != nil
  # path: expiration_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
}

