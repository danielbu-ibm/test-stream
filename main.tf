##############################################################################
# Resource Group
##############################################################################
module "resource_group" {
  source = "terraform-ibm-modules/terraform-ibm-resource-group.git"
  version = "latest"
  # if an existing resource group is not set (null) create a new one using prefix
  resource_group_name          = var.resource_group == null ? "${var.prefix}-resource-group" : null
  existing_resource_group_name = var.resource_group
}
