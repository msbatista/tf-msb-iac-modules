resource "azurerm_storage_account" "storage_account" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind

  min_tls_version           = "TLS1_2"
  enable_https_traffic_only = true
  allow_blob_public_access  = false

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}
