variable "resource_group_name" {    
    description = "value for resource group name"
    type        = string        
}

variable "mssql_server_name" {
    description = "Name of the SQL Server"
    type        = string
}

variable "location" {
  description = "value for location of resource group"
  type        = string
}
variable "sql_database_name" {
  description = "Name of the SQL Database"
  type        = string
}

