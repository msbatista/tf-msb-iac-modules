variable "network_interface_id" {
  type = string
  description = "Network interface id for which the nsg rule will be associated."
}

variable "network_security_group_id" {
  type = string
  description = "Network security group id for which the nsg rule will be associated."
}