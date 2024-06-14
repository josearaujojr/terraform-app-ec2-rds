module "app_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "app_ec2" {
  source               = "./modules/compute"
  project_name         = var.project_name
  tags                 = local.tags
  app_subnet_public_1a = module.app_network.app_subnet_public_1a
}

module "app_rds" {
  source               = "./modules/database"
  project_name         = var.project_name
  tags                 = local.tags
  app_subnet_public_1b = module.app_network.app_subnet_public_1b
  app_subnet_public_1a = module.app_network.app_subnet_public_1a
}