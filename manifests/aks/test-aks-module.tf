module "aks" {
  source = "../../modules/aks"

  rg_akc_name     = var.rg_akc_name
  rg_akc_location = var.rg_akc_location
  akc_name        = var.akc_name
  akc_dns_prefix  = var.akc_dns_prefix
  akc_sys_vm_size = var.akc_sys_vm_size
  akc_cnp_vm_size = var.akc_cnp_vm_size
  akc_ssh_key     = var.akc_ssh_key
}