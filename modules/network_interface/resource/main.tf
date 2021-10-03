resource "azurerm_network_interface" "network_interface" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration = var.ip_configuration
}
