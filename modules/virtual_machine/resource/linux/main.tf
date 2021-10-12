resource "azurerm_linux_virtual_machine" "linux_virtual_machine" {
  name                  = var.name
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = var.network_interface_ids
  computer_name         = var.computer_name

  disable_password_authentication = false

  os_disk {
    caching              = var.os_disk.value["caching"]
    storage_account_type = var.os_disk.value["storage_account_type"]
  }

  source_image_reference {
    publisher = var.source_image_reference.value["publisher"]
    offer     = var.source_image_reference.value["offer"]
    sku       = var.source_image_reference.value["sku"]
    version   = var.source_image_reference.value["version"]
  }

  boot_diagnostics {
    storage_account_uri = var.storage_account_uri
  }

  identity {
    type = "SystemAssigned"
  }
}
