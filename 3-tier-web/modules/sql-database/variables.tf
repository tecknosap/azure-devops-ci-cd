variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the resources."
  type        = string
}

variable "sql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

variable "admin_username" {
  description = "Administrator login for the SQL server."
  type        = string
}

variable "admin_password" {
  description = "Administrator login password for the SQL server."
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "The name of the SQL database."
  type        = string
}


