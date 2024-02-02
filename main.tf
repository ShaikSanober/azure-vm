# creating virtual machines for two windows (windows-10 and windows-11) 

#Define the provider
provider   "azurerm"   {
 
features   {}
 }
# Define the resource group
resource "azurerm_resource_group" "RG3" {
  name     = var.rg_name
  location = var.rg_location
}

 # Define the network security group
 resource "azurerm_network_security_group" "NSG" {
  name                = var.rg_NSG
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
}

# Define the virtual network
resource "azurerm_virtual_network" "VNET3" {
  name                = var.rg_VNET3
  address_space       = var.rg_address
  location            = azurerm_resource_group.RG3.location
  resource_group_name = azurerm_resource_group.RG3.name
}
 
# Define the subnets
resource "azurerm_subnet" "firstwindows10" {
  name                 = var.firstwindows10-subnet
  resource_group_name  = azurerm_resource_group.RG3.name
  virtual_network_name = azurerm_virtual_network.VNET3.name
  address_prefixes     = var.address_prefixes
}
 
resource "azurerm_subnet" "firstwindows11" {
  name                 = var.firstwindows11-subnet
  resource_group_name  = azurerm_resource_group.RG3.name
  virtual_network_name = azurerm_virtual_network.VNET3.name
  address_prefixes     = var.address_prefixes
}
 
# Define the public IP addresses
resource "azurerm_public_ip" "windows10" {
  name                = var.windows10-public-ip
  location            = azurerm_resource_group.RG3.location
  resource_group_name = azurerm_resource_group.RG3.name
  allocation_method   = var.allocation_method
}
 
resource "azurerm_public_ip" "windows11" {
  name                = var.windows11-public-ip
  location            = azurerm_resource_group.RG3.location
  resource_group_name = azurerm_resource_group.RG3.name
  allocation_method   = var.allocation_method
}
 
# Define the network interfaces
resource "azurerm_network_interface" "firstwindows10" {
  name                = var.firstwindows10-nic
  location            = azurerm_resource_group.RG3.location
  resource_group_name = azurerm_resource_group.RG3.name
 
  ip_configuration {
    name                          = var.firstwindows10-ip-config
    subnet_id                     = azurerm_subnet.firstwindows10.id
    public_ip_address_id          = azurerm_public_ip.windows10.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}
 
resource "azurerm_network_interface" "firstwindows11" {
  name                = var.firstwindows11-nic
  location            = azurerm_resource_group.RG3.location
  resource_group_name = azurerm_resource_group.RG3.name
 
  ip_configuration {
    name                          = var.firstwindows11-ip-config
    subnet_id                     = azurerm_subnet.firstwindows11.id
    public_ip_address_id          = azurerm_public_ip.windows11.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}
 
# Define the virtual machines
resource "azurerm_windows_virtual_machine" "firstwindows10" {
  name                  = var.onewindow-vm
  location              = azurerm_resource_group.RG3.location
  resource_group_name   = azurerm_resource_group.RG3.name
  network_interface_ids = [azurerm_network_interface.firstwindows10.id]
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_paasword
  os_disk {
    name              = var.windows10-os-disk
    caching           = var.caching
    storage_account_type = var.storage_account_type
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version
  }
}
 
resource "azurerm_windows_virtual_machine" "firstwindows11" {
  name                  = var.twowindow-vm
  location              = azurerm_resource_group.RG3.location
  resource_group_name   = azurerm_resource_group.RG3.name
  network_interface_ids = [azurerm_network_interface.firstwindows11.id]
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_paasword
  os_disk {
    name              = var.windows11-os-disk
    caching           = var.caching
    storage_account_type = var.storage_account_type
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version
  }
 
}
