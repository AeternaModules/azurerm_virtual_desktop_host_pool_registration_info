output "virtual_desktop_host_pool_registration_infos_expiration_date" {
  description = "Map of expiration_date values across all virtual_desktop_host_pool_registration_infos, keyed the same as var.virtual_desktop_host_pool_registration_infos"
  value       = { for k, v in azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos : k => v.expiration_date }
}
output "virtual_desktop_host_pool_registration_infos_hostpool_id" {
  description = "Map of hostpool_id values across all virtual_desktop_host_pool_registration_infos, keyed the same as var.virtual_desktop_host_pool_registration_infos"
  value       = { for k, v in azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos : k => v.hostpool_id }
}
output "virtual_desktop_host_pool_registration_infos_token" {
  description = "Map of token values across all virtual_desktop_host_pool_registration_infos, keyed the same as var.virtual_desktop_host_pool_registration_infos"
  value       = { for k, v in azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos : k => v.token }
  sensitive   = true
}

