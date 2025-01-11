data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "tnk_db_kv" {
  name                            = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = "standard"
  enabled_for_deployment          = true
  enabled_for_disk_encryption     = true
  enabled_for_template_deployment = true
  purge_protection_enabled        = true
  soft_delete_retention_days      = 7

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

resource "azurerm_key_vault_secret" "tnk_kv_secret" {
  name         = var.sql_db_name
  value        = var.admin_password
  key_vault_id = azurerm_key_vault.tnk_db_kv.id
  expiration_date = timeadd(timestamp(), "4320h") 

  depends_on = [
    azurerm_key_vault.tnk_db_kv
  ]
}
