variable "name" {
    type = string
    description = "Name for this key vault."
}

variable "location" {
    type = string
    description = "Resource location for this key vault."
}

variable "resource_group_name" {
    type = string
    description = "Resource group where this key vault will be placed."
}

resource "azurerm_key_vault" "key_vault" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.sku_name
}