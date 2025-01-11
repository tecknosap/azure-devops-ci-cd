resource "azurerm_app_service_plan" "tnk-app-service-plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Windows"  # Ensure this is set to Windows for .NET Framework
  reserved            = false  # False because we are using Windows-based App Service Plan

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "tnk-app-service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.tnk-app-service-plan.id

  site_config {
    dotnet_framework_version = "v4.0"  # Specify the .NET Framework version
    scm_type                 = "LocalGit"  # Configure Git-based deployment
    
    # Set the default document for the App Service to index.html
    default_documents = ["index.html"]
  }

  connection_string {
    name  = "SQL_CONNECTION_STRING"
    type  = "SQLServer"
    value = "Server=tcp:${var.mssql_server_name};Database=${var.mssql_database_name};User Id=${var.admin_username};Password=${var.admin_password};"
  }
}
