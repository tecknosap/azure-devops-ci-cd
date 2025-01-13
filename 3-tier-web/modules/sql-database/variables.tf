# =====================================================
# Define Resource Group name variable
# =====================================================
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

# =====================================================
# Define Location variable for resources
# =====================================================
variable "location" {
  description = "The location of the resources."
  type        = string
}

# =====================================================
# Define SQL Server name variable
# =====================================================
variable "sql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

# =====================================================
# Define SQL Server administrator username variable
# =====================================================
variable "admin_username" {
  description = "Administrator login for the SQL server."
  type        = string
}

# =====================================================
# Define SQL Server administrator password variable
# =====================================================
variable "admin_password" {
  description = "Administrator login password for the SQL server."
  type        = string
  sensitive   = true
}

# =====================================================
# Define SQL Database name variable
# =====================================================
variable "database_name" {
  description = "The name of the SQL database."
  type        = string
}
