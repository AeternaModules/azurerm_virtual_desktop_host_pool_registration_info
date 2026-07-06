output "virtual_desktop_host_pool_registration_infos" {
  description = "All virtual_desktop_host_pool_registration_info resources"
  value       = azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos
  sensitive   = true
}
output "virtual_desktop_host_pool_registration_infos_expiration_date" {
  description = "List of expiration_date values across all virtual_desktop_host_pool_registration_infos"
  value       = [for k, v in azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos : v.expiration_date]
}
output "virtual_desktop_host_pool_registration_infos_hostpool_id" {
  description = "List of hostpool_id values across all virtual_desktop_host_pool_registration_infos"
  value       = [for k, v in azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos : v.hostpool_id]
}
output "virtual_desktop_host_pool_registration_infos_token" {
  description = "List of token values across all virtual_desktop_host_pool_registration_infos"
  value       = [for k, v in azurerm_virtual_desktop_host_pool_registration_info.virtual_desktop_host_pool_registration_infos : v.token]
  sensitive   = true
}

