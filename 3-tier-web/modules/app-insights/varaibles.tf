variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the resource group."
  type        = string
}


variable "application_insight_name" {
    description = "Application insight name"
    type = string
      
}

variable "application_type" {
    description = "Application isight type"
    type = string
  
}

variable "log_analytics_workspace_id" {
     description = "Log analytics workspace"
    type = string
  
}
