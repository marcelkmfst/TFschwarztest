# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.13.0"
  features {}
}

resource "azurerm_resource_group" "rgapp" {
  name     = var.resourcegroupname
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
    name = var.vnetname
    resource_group_name = azurerm_resource_group.rgapp.name
    location = azurerm_resource_group.rgapp.location
    address_space = var.vnetaddressrange
}

resource "azurerm_subnet" "sn1" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.rgapp.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnetrange
}

