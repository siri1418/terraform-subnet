resource "azurerm_resource_group" "resgrp" {
  name     = var.resourcegroup_details.name
  location = var.resourcegroup_details.location
}

resource "azurerm_virtual_network" "rgvn" {
  name                = var.my_vnet_details.name
  address_space       =[var.my_vnet_details.address_space]
  location            = azurerm_resource_group.resgrp.location
  resource_group_name = azurerm_resource_group.resgrp.name
}

resource "azurerm_subnet" "my_sub1" {
  name                 = var.my_subnet1.name
  resource_group_name  = azurerm_resource_group.resgrp.name
  virtual_network_name = azurerm_virtual_network.rgvn.name
  address_prefixes     =[var.my_subnet1.address_prefixes]
}