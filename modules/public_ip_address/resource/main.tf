resource "azurerm_public_ip" "public_ip" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method

  sku      = var.sku
  sku_tier = var.sku_tier

  availability_zone = var.availability_zone

  tags = var.tags
}
