resource "azurerm_mssql_server" "example" {
  name                         = "example-sqlserver"
  resource_group_name          = var.mssql_server_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}