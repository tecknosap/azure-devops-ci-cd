# =====================================================
# Create Log Analytics Workspace for monitoring
# =====================================================
resource "azurerm_log_analytics_workspace" "db_law" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"  # Specify the pricing tier
  retention_in_days   = 30  # Data retention period in days
}

# =====================================================
# Configure Diagnostic Settings for the target resource
# =====================================================
resource "azurerm_monitor_diagnostic_setting" "tnk-diagnostics" {
  name                       = var.diagnostic_setting
  target_resource_id         = var.target_resource_id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.db_law.id

  metric {
    category = "AllMetrics"  # Enable all metrics
    enabled  = true
  }
}
