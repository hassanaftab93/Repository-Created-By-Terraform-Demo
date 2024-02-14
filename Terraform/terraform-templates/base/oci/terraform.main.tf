# module "resource_group" {
#   source              = "./modules/resource_group"
#   resource_group_name = var.resource_group_name
#   location            = var.location
# }

# module "app_service" {
#   source               = "./modules/app_service"
#   app_service_name     = var.app_service_name
#   resource_group_name  = module.resource_group.name
#   location             = module.resource_group.location
#   os_type              = var.os_type
#   app_service_sku_name = var.app_service_sku_name
# }

# module "service_bus" {
#   source                     = "./modules/service_bus"
#   service_bus_namespace_name = var.service_bus_namespace_name
#   service_bus_queue_name     = var.service_bus_queue_name
#   resource_group_name        = module.resource_group.name
#   location                   = module.resource_group.location
# }