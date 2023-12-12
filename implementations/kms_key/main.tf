module "kms_key" {

    source = "../../modules/kms_key"

    alias =  var.alias
    description = var.description
    deletion_window_in_days = var.deletion_window_in_days
}