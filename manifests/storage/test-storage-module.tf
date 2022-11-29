module "storage" {
  source = "../../modules/storage"

  rg_sa_name     = "${var.rg_sa_name}${local.timestamp}"
  rg_sa_location = var.rg_sa_location
  asa_name       = "${var.asa_name}${local.timestamp}"

}

locals {
  timestamp = formatdate("YYYYMMDDhhmmss", timestamp())
}