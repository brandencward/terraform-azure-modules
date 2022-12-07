// Setting the varibales like this will allow you to input via command line or file. Ex: rg_sa_name
variable "arg-kv_name" {
  description = "Specifies the resource group name."
  type        = string
}

variable "arg-kv_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "akv_name" {
  description = "The name of the Key Vault to create. Changing this forces a new resource to be created."
  type        = string
}

variable "akv_tags" {
  description = "Tags for the Key Vault"
  type        = map(string)
  default = {
    environment = "dev"
  }
}