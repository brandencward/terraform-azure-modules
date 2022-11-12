output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.storage.name
}

output "storage_account_name" {
  description = "Storage Account Name"
  value       = azurerm_storage_account.storage_account.name
}

output "container_name" {
  description = "Storage Account Container Name"
  value       = azurerm_storage_container.container.name
}

output "terraform_backend_key" {
  description = "The name of the state store file to be created."
  value       = "${var.asa_tags["environment"]}.tfstate"
}
