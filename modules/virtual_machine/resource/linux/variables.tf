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

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "Defines a password for the admin user."
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
    caching              = string
    storage_account_type = string
  })
  default = {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }
  description = "A block that defines the type of th cache and the type of the storage account."
}
