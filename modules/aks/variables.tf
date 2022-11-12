// Setting the varibales like this will allow you to input via command line or file. Ex: rg_sa_name
variable "rg_akc_name" {
  description = "Specifies the resource group name."
  type        = string
}

variable "rg_akc_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "akc_name" {
  description = "The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
  type        = string
}

variable "akc_dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created."
  type        = string
}

variable "akc_sys_nodepool_name" {
  description = "The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
  type        = string
  default     = "default"
}

variable "akc_sys_node_count" {
  description = "System (default) Nodepool count."
  type        = number
  default     = 1
}

variable "akc_sys_vm_size" {
  description = "The size of the Virtual Machine, such as Standard_DS2_v2. Changing this forces a new resource to be created."
  type        = string
}

variable "akc_tags" {
  description = "Tags for the Kubernetes Cluster"
  type        = map(string)
  default = {
    environment = "development"
  }
}

variable "akc_cnp_name" {
  description = "App Cluster Nodepool Name."
  type        = string
  default     = "app"
}

variable "akc_cnp_vm_size" {
  description = "The size of the Virtual Machine, such as Standard_DS2_v2. Changing this forces a new resource to be created."
  type        = string
}

variable "akc_cnp_node_count" {
  description = "App Nodepool count."
  type        = number
  default     = 1
}

variable "akc_kubernetes_version" {
  description = "Kubernetes version. az aks get-versions --location eastus --output table"
  type        = string
  default     = "1.24.6"
}

variable "akc_ssh_key" {
  description = "An ssh_key block. Only one is currently allowed. Changing this forces a new resource to be created."
  type        = string
}

variable "akc_max_pods" {
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  type        = number
  default     = 30
}

variable "akc_min_count" {
  description = "The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
  type        = number
  default     = 1
}

variable "akc_max_count" {
  description = "The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
  type        = number
  default     = 2
}