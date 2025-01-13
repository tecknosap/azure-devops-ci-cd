# =====================================================
# Define Key Vault name variable
# =====================================================
variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}

# =====================================================
# Define Resource Group name variable
# =====================================================
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# =====================================================
# Define Location variable for the resource group
# =====================================================
variable "location" {
  description = "The location of the resource group"
  type        = string
}

# =====================================================
# Define Admin password variable for Key Vault access
# =====================================================
variable "admin_password" {
  description = "The password for the Key Vault"
  type        = string
}

# =====================================================
# Define SQL Database name variable
# =====================================================
variable "sql_db_name" {
  description = "The name of the SQL Database"
  type        = string
}
