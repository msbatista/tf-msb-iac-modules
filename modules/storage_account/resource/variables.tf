variable "name" {
  type        = string
  description = "The name for this storage account instance."
}

variable "resource_group_name" {
  type        = string
  description = "The Azure resource group for which the storage account should be placed."
}

variable "location" {
  type        = string
  description = "The Azure region for which the storage account should be created"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "The tier to use for this storage account."
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
  description = "The type of the replication for the storage account."
}

variable "account_kind" {
  type        = string
  default     = "StorageV2"
  description = "Defines the kind of the account."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A mapping of tags which should be assigned to this storage account."
}
