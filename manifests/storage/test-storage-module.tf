module "storage" {
  source = "../../modules/storage"

  rg_sa_name     = var.rg_sa_name
  rg_sa_location = var.rg_sa_location
  asa_name       = var.asa_name

}