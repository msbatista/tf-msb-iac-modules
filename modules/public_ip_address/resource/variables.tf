variable "name" {
  type        = string
  description = "The name for this public ip."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where this public ip will be placed."
}

variable "location" {
  type        = string
  description = "The location where the resource will be placed."
}

variable "allocation_method" {
  type        = string
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic. Public IP Standard SKUs require allocation_method to be set to Static."
}

variable "sku" {
  type        = string
  default     = "Basic"
  description = "The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic."
}

variable "sku_tier" {
  type        = string
  default     = "Regional"
  description = "The SKU Tier that should be used for the Public IP. Possible values are Regional and Global. Defaults to Regional."
}

variable "availability_zone" {
  type        = string
  default     = "Zone-Redundant"
  description = "The availability zone to allocate the Public IP in. Possible values are Zone-Redundant, 1, 2, 3, and No-Zone. Defaults to Zone-Redundant."
}

variable "domain_name_label" {
  type        = string
  default     = null
  description = "Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A mapping of tags which should be assigned to this resource."
}
