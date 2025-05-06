# Components
component "web-server-app" {
  for_each = var.regions

  source = "./web-server-app"

  inputs = {
    region                    = each.value
    environment               = var.environment
    owner                     = var.owner
    instance_type             = var.instance_type
    key_name                  = var.key_name
    server                    = var.server
    demo                      = var.demo
    front_door_security_group = var.front_door_security_group[each.value]
    access_security_group     = var.access_security_group[each.value]
    // security_group = var.security_group
  }

  providers = {
    aws = provider.aws.configurations[each.value]
    hcp = provider.hcp.configurations
  }
}
