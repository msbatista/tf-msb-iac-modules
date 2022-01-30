variable "name" {
  type        = string
  description = "The name for this virtual machine."
}

variable "location" {
  type        = string
  description = "The location on which this virtual machine will be located."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the virtual machine will be located."
}

variable "size" {
  type        = string
  default     = "Standard_F2"
  description = "The SKU which should be used for this Virtual Machine."
}

variable "network_interface_ids" {
  type        = list(string)
  description = "The network interface which will be used for this virtual machine."
}

variable "admin_username" {
  type        = string
  description = "Admin user for this VM."
}

variable "public_key" {
  type        = string
  description = "Admin user for this VM."
}

variable "source_image_reference" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  description = "Specifies which image and version will used."
}

variable "computer_name" {
  type        = string
  description = "Defines the hostname for this virtual machine."
}

variable "os_disk" {
  type = object({
    name                 = string
    caching              = string
    storage_account_type = string
  })
  description = "A block that defines the type of th cache and the type of the storage account."
}

variable "storage_account_uri" {
  type        = string
  description = "Storage account for loggin boot diagnostics."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A mapping of tags which should be assigned to this resource."
}

variable "url_certifcates" {
  type = list(object({
    url = string
  }))
  default     = null
  description = "An list of urls to key vault certificates."
}

variable "key_vault_id" {
  type        = string
  default     = null
  description = "Key vault id where the are in."
}
