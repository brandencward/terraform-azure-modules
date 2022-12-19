terraform {
  backend "azurerm" {
    resource_group_name  = "base-resources"
    storage_account_name = "storageaccount"
    container_name       = "dev-tfstate"
    key                  = "keyvault.fstate"
  }
}