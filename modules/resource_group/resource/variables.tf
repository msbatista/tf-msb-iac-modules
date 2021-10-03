variable "name" {
  type        = string
  description = "The name that should be used for this resource group."
}

variable "location" {
  type        = string
  description = "The Azure Region where the resorce should be located."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A mapping of tags which should be assigned to this resource group."
}
