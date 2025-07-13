resource "azurerm_virtual_network" "testvnet" {
name                = var.azurerm_virtual_network
location            = var.location
resource_group_name = var.resource_group_name
address_space       = ["10.0.0.0/16"]
}

