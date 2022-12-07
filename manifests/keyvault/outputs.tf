output "id" {
  description = "The ID of the Key Vault."
  value       = module.akv.id
}

output "vault_uri" {
  description = "The URI of the Key Vault."
  value       = module.akv.vault_uri
}