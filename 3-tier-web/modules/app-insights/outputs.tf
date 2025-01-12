# Output the instrumentation key and app_id
output "instrumentation_key" {
  value = azurerm_application_insights.teckno_web_insights.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.teckno_web_insights.app_id
}

# output "out_app_insights_id" {
#   value =  azurerm_application_insights.teckno_web_insights.id
# }

