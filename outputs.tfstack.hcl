#Outputs for Web Server Stacks Deployment
output "web-server-app_instance_ids" {
  type        = list(string)
  description = "Instance IDs for web servers"
  value       = [for x in component.web-server-app : x.web_server_app_instance_id]
}

output "web-server-app_names" {
  type        = list(string)
  description = "Names for web servers"
  value       = [for x in component.web-server-app : x.web_server_app_name]
}

output "web-server-app_public_ips" {
  type        = list(string)
  description = "Public IPs for web servers"
  value       = [for x in component.web-server-app : x.web_server_app_public_ip]
}

output "web-server-app_dns_names" {
  type        = list(string)
  description = "DNS names for web servers"
  value       = [for x in component.web-server-app : x.web_server_app_dns_name]
}
