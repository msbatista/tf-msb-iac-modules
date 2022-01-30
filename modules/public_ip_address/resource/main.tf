resource "azurerm_public_ip" "public_ip" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method
  domain_name_label   = var.domain_name_label

  sku      = var.sku
  sku_tier = var.sku_tier

  availability_zone = var.sku == "Basic" ? null : var.availability_zone

  tags = var.tags
}
