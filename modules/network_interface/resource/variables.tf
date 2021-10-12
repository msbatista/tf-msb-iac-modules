variable "name" {
  type        = string
  description = "The name for the network interface."
}

variable "location" {
  type        = string
  description = "The location for the network interface."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the resource group that network interface will be located."
}

variable "ip_configurations" {
  type = list(object({
    name                          = string
    subnet_id                     = string
    private_ip_address_allocation = string
  }))
  description = "Ip  configuration for the network interface."
}
