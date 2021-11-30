resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-resource"
  location = var.location
}
resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = var.addressspace
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "main" {
  name                 = var.name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.addressprefix
}

resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = var.ipname
    subnet_id                     = azurerm_subnet.main.id
    private_ip_address_allocation = var.ipaddressallocation
  }
}
resource "azurerm_windows_virtual_machine" "main" {
  name                = "${var.prefix}-VM"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  size                = var.sku
  admin_username      = var.admin
  admin_password      = var.password
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  os_disk {
    caching              = var.cach
    storage_account_type = var.storagetype
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku1
    version   = var.version1
  }
}