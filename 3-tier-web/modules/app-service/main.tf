# =====================================================
# App Service Plan for the application
# =====================================================
resource "azurerm_app_service_plan" "tnk-app-service-plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Windows"  # For .NET Framework
  reserved            = false  # Windows-based App Service Plan

  sku {
    tier = "Standard"
    size = "S1"
  }
}

# =====================================================
# App Service for the application
# =====================================================
resource "azurerm_app_service" "tnk-app-service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.tnk-app-service-plan.id

  site_config {
    dotnet_framework_version = "v4.0"  # .NET Framework version
    scm_type                 = "LocalGit"  # Git-based deployment
    default_documents        = ["index.html"]  # Default document
  }

  # =====================================================
  # Application Insights Configuration
  # =====================================================
  app_settings = {
    "APPLICATION_INSIGHTS_INSTRUMENTATION_KEY" = var.application_insights_instrumentation_key
  }

  # =====================================================
  # SQL Connection string
  # =====================================================
  connection_string {
    name  = "SQL_CONNECTION_STRING"
    type  = "SQLServer"
    value = "Server=tcp:${var.mssql_server_name};Database=${var.mssql_database_name};User Id=${var.admin_username};Password=${var.admin_password};"
  }
}
