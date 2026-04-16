module "databases" {
  for_each = var.databases
  source = "./modules/component"

  dns_domain = var.dns_domain
  component = each.key
  env = var.env
  instance_type = each.value["instance_type"]
  ports =  each.value["ports"]
}

module "apps" {
  for_each = var.apps
  source = "./modules/component"
  
  dns_domain = var.dns_domain
  component = each.key
  env = var.env
  instance_type = each.value["instance_type"]
  ports =  each.value["ports"]
}




