

resource "random_password" "password" {
    length  = 16
    special = true
}
resource "azurerm_mssql_server" "svr_name" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = random_password.password.result

}

resource "azurerm_mssql_database" "svr_db_name" {
  name         = var.database_name
  server_id    = azurerm_mssql_server.svr_name.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"


}
