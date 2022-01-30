variable "name" {
  type        = string
  description = "The name for this network security group rule."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the network security group will be located."
}

variable "network_security_group_name" {
  type        = string
  description = "The network security group name which this rule will be associated with."
}

variable "rule" {
  type = object({
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  })
  description = "Defines a block of parameters for the network security group rule."
}
