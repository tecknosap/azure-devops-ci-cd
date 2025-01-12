variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "mssql_database_name" { 
  description = "The name of the SQL database."
  type        = string
  
}

variable "mssql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

variable "location" {
  description = "The location of the resource group."
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the SQL Server"
  type        = string
  sensitive   = true
}

variable "admin_username" {
  description = "The administrator username for the SQL Server"
  type        = string
}
variable "connection_string" {
  description = "Connection string configuration for the app service"
  type = object({
    name  = string
    type  = string
    value = string
  })
}

variable "application_insights_instrumentation_key" {
  description = "The instrumentation key for Application Insights."
  type        = string
}



