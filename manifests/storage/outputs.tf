output "resource_group_name" {
  description = "Resource Group Name"
  value       = module.storage.resource_group_name
}

output "storage_account_name" {
  description = "Storage Account Name"
  value       = module.storage.storage_account_name
}

output "container_name" {
  description = "Storage Account Container Name"
  value       = module.storage.container_name
}

output "terraform_backend_key" {
  description = "The name of the state store file to be created."
  value       = module.storage.terraform_backend_key
}
