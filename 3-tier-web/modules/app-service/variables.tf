# =====================================================
# Define App Service Plan name variable
# =====================================================
variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

# =====================================================
# Define App Service name variable
# =====================================================
variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

# =====================================================
# Define resource group name variable
# =====================================================
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

# =====================================================
# Define SQL database name variable
# =====================================================
variable "mssql_database_name" { 
  description = "The name of the SQL database."
  type        = string
}

# =====================================================
# Define SQL server name variable
# =====================================================
variable "mssql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

# =====================================================
# Define location variable
# =====================================================
variable "location" {
  description = "The location of the resource group."
  type        = string
}

# =====================================================
# Define SQL Server administrator password variable
# =====================================================
variable "admin_password" {
  description = "The administrator password for the SQL Server"
  type        = string
  sensitive   = true
}

# =====================================================
# Define SQL Server administrator username variable
# =====================================================
variable "admin_username" {
  description = "The administrator username for the SQL Server"
  type        = string
}

# =====================================================
# Define connection string variable for the app service
# =====================================================
variable "connection_string" {
  description = "Connection string configuration for the app service"
  type = object({
    name  = string
    type  = string
    value = string
  })
}

# =====================================================
# Define Application Insights instrumentation key variable
# =====================================================
variable "application_insights_instrumentation_key" {
  description = "The instrumentation key for Application Insights."
  type        = string
}
