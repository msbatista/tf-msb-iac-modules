resource "azurerm_network_security_rule" "network_security_rule" {
  name = var.name

  priority                   = var.rule.priority
  direction                  = var.rule.direction
  access                     = var.rule.access
  protocol                   = var.rule.protocol
  source_port_range          = var.rule.source_port_range
  destination_port_range     = var.rule.destination_port_range
  source_address_prefix      = var.rule.source_address_prefix
  destination_address_prefix = var.rule.destination_address_prefix

  resource_group_name         = var.resource_group_name
  network_security_group_name = var.network_security_group_name
}
