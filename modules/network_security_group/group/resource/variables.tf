variable "name" {
  type        = string
  description = "The name for this network security group."
}

variable "location" {
  type        = string
  description = "The location on which this network security group will be located."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the network security group will be located."
}


variable "tags" {
  type        = map(any)
  default     = {}
  description = "A mapping of tags which should be assigned to this resource."
}
