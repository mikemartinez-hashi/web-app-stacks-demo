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
    front_door_security_group = upstream_input.security_groups.front_door_security_group_id_dev[each.value]
    access_security_group     = var.access_security_group
    // security_group = var.security_group
  }

  providers = {
    aws = provider.aws.configurations[each.value]
    hcp = provider.hcp.configurations
  }
}
