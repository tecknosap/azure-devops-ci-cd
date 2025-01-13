# =====================================================
# Global Resource Group name
# =====================================================
variable "resource_group" {
  description = "Global resource group"
  type        = string
}

# =====================================================
# Global location for resources
# =====================================================
variable "global_location" {
  description = "Global location"
  type        = string
}

# =====================================================
# SQL Server name
# =====================================================
variable "sql_server_name" {
  description = "SQL server name"
  type        = string
}

# =====================================================
# SQL Server admin username
# =====================================================
variable "server_user_name" {
  description = "SQL server admin username"
  type        = string
}

# =====================================================
# SQL Database name
# =====================================================
variable "sql_database_name" {
  description = "Database name"
  type        = string
}

# =====================================================
# Key Vault name
# =====================================================
variable "key_vault_name" {
  description = "Key vault name"
  type        = string
}

# =====================================================
# Log Analytics workspace name
# =====================================================
variable "log_analytics" {
  description = "The name of the Log Analytics workspace"
  type        = string
}

# =====================================================
# Diagnostic setting name
# =====================================================
variable "diagnostic_settings_name" {
  description = "The name of the diagnostic setting"
  type        = string
}

# =====================================================
# App Service Plan name
# =====================================================
variable "app_service_plan_name" {
  description = "The name of the app service plan"
  type        = string
}

# =====================================================
# App Service name
# =====================================================
variable "app_service_name" {
  description = "The name of the app service"
  type        = string
}

# =====================================================
# Application Insights name
# =====================================================
variable "application_insight_name" {
  description = "Application insight name"
  type        = string
}

# =====================================================
# Application Insights type (default is web)
# =====================================================
variable "application_type" {
  description = "Application insight type"
  type        = string
  default     = "web"
}
