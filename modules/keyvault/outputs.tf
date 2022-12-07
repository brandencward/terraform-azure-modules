output "id" {
  description = "The ID of the Key Vault."
  value       = azurerm_key_vault.akv.id
}

output "vault_uri" {
  description = "The URI of the Key Vault."
  value       = azurerm_key_vault.akv.vault_uri
}