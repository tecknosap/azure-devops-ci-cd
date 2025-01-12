resource "azurerm_application_insights" "teckno_web_insights" {
  name                    = var.application_insight_name
  application_type         = "web"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  workspace_id             = var.log_analytics_workspace_id
}
