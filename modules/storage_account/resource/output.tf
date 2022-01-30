output "id" {
  value = azurerm_storage_account.storage_account.id
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.storage_account.primary_blob_endpoint
}

output "primary_access_key" {
  value     = azurerm_storage_account.storage_account.primary_access_key
  sensitive = true
}

output "identity" {
  value = azurerm_storage_account.storage_account.identity
}

output "primary_web_host" {
  value = azurerm_storage_account.storage_account.primary_web_host
}

output "primary_web_endpoint_authority" {
  value = lookup(regex("^(?:(?P<scheme>[^:/?#]+):)?(?://(?P<authority>[^/?#]*))?", azurerm_storage_account.storage_account.primary_web_endpoint), "authority")
}

output "primary_connection_string" {
  value     = azurerm_storage_account.storage_account.primary_connection_string
  sensitive = true
}
