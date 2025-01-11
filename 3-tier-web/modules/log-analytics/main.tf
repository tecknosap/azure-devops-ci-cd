resource "azurerm_log_analytics_workspace" "db_law" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_monitor_diagnostic_setting" "tnk-diagnostics" {
  name                       = var.diagnostic_setting
  target_resource_id         = var.target_resource_id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.db_law.id

  metric {
    category = "AllMetrics"
    enabled  = true
  }
}
