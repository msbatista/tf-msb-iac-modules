variable "name" {
  type        = string
  description = "The name for the virtual_network."
}

variable "location" {
  type        = string
  description = "The location for the virtual network."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the virtual network will be located."
}

variable "address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "An list of addresses for the virtual network."
}
