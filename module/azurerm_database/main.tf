resource "azurerm_mssql_database" "mssql_database12" {
  depends_on = [azurerm_mssql_server.example]
  name         = "example-db"
  server_id    = azurerm_mssql_server.example.id
  }

  variable "mssql_database_name" {
     description = "value of the azurerm_sql_database_name"
        type = string
  }


#testing comment 