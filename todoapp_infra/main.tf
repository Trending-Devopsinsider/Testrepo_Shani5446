module "resource_group" {
  source              = "../module/resource_group"
  resource_group_name = "abc-todoapp-rg"
  location            = "westus"
}

module "resource_group" {
  source              = "../module/resource_group"
  resource_group_name = "abc-todoapp-rg2"
  location            = "westus"
}

module "virtual_network" {
  depends_on              = [module.resource_group]
  source                  = "../module/Azurerm_virtual_network"
  azurerm_virtual_network = "abc-todoapp-vnet"
  resource_group_name     = "abc-todoapp-rg"
  location                = "westus"
}

module "mysql_server" {
  source              = "../module/Azurerm_sql_server"
  mssql_server_name   = "abc-todoapp-sql-server"
  sql_database_name   = "abc-todoapp-db"
  resource_group_name = "abc-todoapp-rg"
  location            = "westus"
  # administrator_login          = "sqladmin"
  # administrator_login_password = "P@ssw0rd1234!"
}

module "mssql_database" {
  source            = "../module/Azurerm_database"
  mssql_database_name = var.mysql_server.sql_database_name
  mssql_server_name = var.mysql_server.mssql_server_name  
  # resource_group_name = "abc-todoapp-rg"  
  # location          = "westus" 
}




# variable "resource_group_name" {
#   type = string
#   default = "abc-todoapp-rg"

# }

# variable "location" {
#   type = string
#   default = "westus"  
# }








