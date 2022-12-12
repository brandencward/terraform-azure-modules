data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "arg-kv" {
  name     = var.arg-kv_name
  location = var.arg-kv_location
}

resource "azurerm_key_vault" "akv" {
  name                        = var.akv_name
  location                    = azurerm_resource_group.arg-kv.location
  resource_group_name         = azurerm_resource_group.arg-kv.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  tags = var.akv_tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}