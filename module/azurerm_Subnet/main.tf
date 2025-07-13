resource "azurerm_subnet" "frountend" {
  name                 = var.azurerm_subnet1
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.resource_group_name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "backend" {
  name                 = var.azurerm_subnet2
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = ["10.0.2.0/24"]
}


