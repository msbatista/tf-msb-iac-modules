output "id" {
  value = data.azurerm_storage_account.storage_account.id
}

output "primary_blob_endpoint" {
  value = data.azurerm_storage_account.storage_account.primary_blob_endpoint
}

output "primary_access_key" {
  value     = data.azurerm_storage_account.storage_account.primary_access_key
  sensitive = true
}


output "primary_web_host" {
  value = data.azurerm_storage_account.storage_account.primary_web_host
}

output "primary_web_endpoint_authority" {
  value = lookup(regex("^(?:(?P<scheme>[^:/?#]+):)?(?://(?P<authority>[^/?#]*))?", data.azurerm_storage_account.storage_account.primary_web_endpoint), "authority")
}

output "primary_connection_string" {
  value     = data.azurerm_storage_account.storage_account.primary_connection_string
  sensitive = true
}
