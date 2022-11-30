// Setting the varibales like this will allow you to input via command line or file. Ex: rg_sa_name
variable "rg_sa_name" {
  description = "Specifies the resource group name."
  type        = string

}
variable "rg_sa_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}
variable "asa_name" {
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
  type        = string
}
variable "asa_account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  type        = string
  default     = "Standard"
}
variable "asa_account_replication_type" {
  description = ""
  type        = string
  default     = "GRS"
}
variable "asa_tags" {
  description = "Tags for the storage account"
  type        = map(string)
  default = {
    environment = "dev"
  }
}