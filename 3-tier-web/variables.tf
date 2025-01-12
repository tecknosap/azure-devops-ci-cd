# variables.tf

variable "resource_group" {
  description = "Global resource group"
  type        = string
}

variable "global_location" {
  description = "Global location"
  type        = string
}

variable "sql_server_name" {
  description = "SQL server name"
  type        = string
}

variable "server_user_name" {
  description = "SQL server admin username"
  type        = string
}

variable "sql_database_name" {
  description = "Database name"
  type        = string
}


variable "key_vault_name" {
  description = "Key vault name"
  type        = string
}

variable "log_analytics" {
  description = "The name of the Log Analytics workspace"
  type        = string
}
variable "diagnostic_settings_name" {
  description = "The name of the diagnostic setting"
  type        = string
}


variable "app_service_plan_name" {
  description = "The name of the app service plan"
  type        = string
}


variable "app_service_name" {
  description = "The name of the app service"
  type        = string
}


variable "application_insight_name" {
    description = "Application insight name"
    type = string
      
}

variable "application_type" {
    description = "Application isight type"
    type = string
    default = "web"

}



