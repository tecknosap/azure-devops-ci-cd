# =====================================================
# Fetch current Azure client configuration
# =====================================================
data "azurerm_client_config" "current" {}

# =====================================================
# Create Azure Key Vault for storing secrets and keys
# =====================================================
resource "azurerm_key_vault" "tnk_db_kv" {
  name                            = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = "standard"
  enabled_for_deployment          = true  # Enable for deployment
  enabled_for_disk_encryption     = true  # Enable for disk encryption
  enabled_for_template_deployment = true  # Enable for template deployments
  purge_protection_enabled        = true  # Enable purge protection
  soft_delete_retention_days      = 7  # Retain soft-deleted items for 7 days

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
      "List",
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
    ]
    storage_permissions = [
      "Get",
      "List",
    ]
  }
}

# =====================================================
# Store SQL database admin password in Key Vault as a secret
# =====================================================
resource "azurerm_key_vault_secret" "tnk_kv_secret" {
  name             = var.sql_db_name
  value            = var.admin_password
  key_vault_id     = azurerm_key_vault.tnk_db_kv.id
  expiration_date  = timeadd(timestamp(), "4320h")  # Set secret expiration to 180 days

  depends_on = [
    azurerm_key_vault.tnk_db_kv
  ]
}
