# =====================================================
# Define resource group name variable
# =====================================================
variable "resource_group_name" {
  description = "The name of the resource group."
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
# Define application insight name variable
# =====================================================
variable "application_insight_name" {
  description = "Application insight name"
  type        = string
}

# =====================================================
# Define application type variable
# =====================================================
variable "application_type" {
  description = "Application insight type"
  type        = string
}

# =====================================================
# Define log analytics workspace ID variable
# =====================================================
variable "log_analytics_workspace_id" {
  description = "Log analytics workspace"
  type        = string
}
