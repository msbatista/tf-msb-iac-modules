variable "name" {
  type        = string
  description = "The name for the subnet."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the subnet will be located."
}

variable "virtual_network_name" {
  type        = string
  description = "The of the vnet."
}

variable "address_prefixes" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "Subnet addresses prefixes."
}
