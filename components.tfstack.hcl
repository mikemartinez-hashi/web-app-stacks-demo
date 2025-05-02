# Components
component "web-server-app" {
  for_each = var.regions

  source = "./web-server-app"

  inputs = {
    region          = each.value
    environment     = var.environment
    owner           = var.owner
    instance_type   = var.instance_type
    key_name        = var.key_name
    server          = var.server
    demo            = var.demo
    security_groups = var.security_groups
  }

  providers = {
    aws = provider.aws.configurations[each.value]
    hcp = provider.hcp.configurations
  }
}
