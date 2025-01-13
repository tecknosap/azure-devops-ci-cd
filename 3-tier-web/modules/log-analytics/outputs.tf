# =====================================================
# Output the Log Analytics Workspace ID
# =====================================================
output "out_log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.db_law.id
}
