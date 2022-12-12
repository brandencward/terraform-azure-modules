terraform {
  backend "azurerm" {
    resource_group_name  = "base-resources"
    storage_account_name = "storageaccountbward"
    container_name       = "dev-tfstate"
    key                  = "keyvault.fstate"
  }
}