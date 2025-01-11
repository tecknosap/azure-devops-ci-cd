variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the Log Analytics workspace"
  type        = string
}

variable "target_resource_id" {
  description = "The target resource to enable diagnostics for"
  type        = string
}

variable "diagnostic_setting" {
  description = "The name of the diagnostic setting"
  type        = string
}
