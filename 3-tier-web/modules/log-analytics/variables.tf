# =====================================================
# Define Log Analytics Workspace name variable
# =====================================================
variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace"
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
# Define Location for the Log Analytics workspace
# =====================================================
variable "location" {
  description = "The location of the Log Analytics workspace"
  type        = string
}

# =====================================================
# Define Target resource ID for diagnostics
# =====================================================
variable "target_resource_id" {
  description = "The target resource to enable diagnostics for"
  type        = string
}

# =====================================================
# Define Diagnostic Setting name variable
# =====================================================
variable "diagnostic_setting" {
  description = "The name of the diagnostic setting"
  type        = string
}
