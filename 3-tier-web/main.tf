# main.tf

# Random ID generation for unique suffix
resource "random_id" "suffix" {
  byte_length = 4
}

# Resource group creation
resource "azurerm_resource_group" "global" {
  name     = "${var.resource_group}-${random_id.suffix.hex}"
  location = var.global_location
}

# SQL Database module usage
module "sql_database" {
  source              = "./modules/sql-database"
  resource_group_name = azurerm_resource_group.global.name
  location            = azurerm_resource_group.global.location
  sql_server_name     = "${var.sql_server_name}-${random_id.suffix.hex}"  # Ensure globally unique SQL Server name
  admin_username      = var.server_user_name 
  admin_password      = module.sql_database.out_administrator_login_password # Password for SQL Server
  database_name       = "${var.sql_database_name}-${random_id.suffix.hex}"  # Unique database name
}



module "key_vault" {
  source              = "./modules/key-vault"
   resource_group_name = azurerm_resource_group.global.name
  location            = azurerm_resource_group.global.location
  key_vault_name      = "${var.key_vault_name}-${random_id.suffix.hex}"
  sql_db_name         = module.sql_database.out_database_name
  admin_password      = module.sql_database.out_administrator_login_password
  depends_on = [ module.sql_database ]
}


module "log_analytics" {
  source                         = "./modules/log-analytics"
    resource_group_name = azurerm_resource_group.global.name
  location            = azurerm_resource_group.global.location
  log_analytics_workspace_name   = "${var.key_vault_name}-${random_id.suffix.hex}"
  target_resource_id             = module.sql_database.out_database_id
  diagnostic_setting             = "${var.diagnostic_settings_name}-${random_id.suffix.hex}"
  depends_on = [module.sql_database, module.key_vault]
}

# Application Insights module usage
module "app_insights" {
  source                    = "./modules/app-insights"
  resource_group_name       = azurerm_resource_group.global.name
  location                  = azurerm_resource_group.global.location
  application_insight_name  = "${var.application_insight_name}-${random_id.suffix.hex}"
  application_type          = var.application_type
  log_analytics_workspace_id = module.log_analytics.out_log_analytics_workspace_id
  depends_on                = [module.sql_database, module.key_vault] # Ensure ordering
}



module "app_service" {
  source                = "./modules/app-service"
  resource_group_name   = azurerm_resource_group.global.name
  location              = azurerm_resource_group.global.location
  app_service_plan_name = "${var.app_service_plan_name}-${random_id.suffix.hex}"
  app_service_name      = "${var.app_service_name}-${random_id.suffix.hex}"
  mssql_server_name     = "${var.sql_server_name}-${random_id.suffix.hex}"
  mssql_database_name   = "${var.sql_database_name}-${random_id.suffix.hex}" 
  admin_username        = var.server_user_name 
  admin_password        = module.sql_database.out_administrator_login_password

  connection_string = {
    name  = "SQL_CONNECTION_STRING"
    type  = "SQLServer"
    value = "Server=tcp:${module.sql_database.out_sql_server_name};Database=${module.sql_database.out_database_name};User Id=${module.sql_database.out_administrator_login};Password=${module.sql_database.out_administrator_login_password};"
  }

  # Pass Application Insights Instrumentation Key
  application_insights_instrumentation_key = module.app_insights.instrumentation_key

  depends_on = [ module.sql_database, module.key_vault, module.log_analytics, module.app_insights ]
}
