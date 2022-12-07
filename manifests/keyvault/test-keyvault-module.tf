module "akv" {
  source = "../../modules/keyvault"

  arg-kv_name     = var.arg-kv_name
  arg-kv_location = var.arg-kv_location
  akv_name        = var.akv_name
}