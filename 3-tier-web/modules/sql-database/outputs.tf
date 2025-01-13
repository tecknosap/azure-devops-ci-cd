# =====================================================
# Output the SQL Server name
# =====================================================
output "out_sql_server_name" {
  description = "The name of the SQL server."
  value       = azurerm_mssql_server.svr_name.name
}

# =====================================================
# Output the SQL Database name
# =====================================================
output "out_database_name" {
  description = "The name of the SQL database."
  value       = azurerm_mssql_database.svr_db_name.name
}

# =====================================================
# Output the SQL Database ID
# =====================================================
output "out_database_id" {
  description = "The ID of the SQL database."
  value       = azurerm_mssql_database.svr_db_name.id
}

# =====================================================
# Output the SQL Server administrator login
# =====================================================
output "out_administrator_login" {
  description = "The administrator login for the SQL Server"
  value       = azurerm_mssql_server.svr_name.administrator_login
}

# =====================================================
# Output the SQL Server administrator password
# =====================================================
output "out_administrator_login_password" {
  description = "The administrator password for the SQL Server"
  value       = random_password.password.result
  sensitive   = true
}
