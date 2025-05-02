#Outputs for Web Server

output "web_server_app_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web_server_app.public_ip
}

output "web_server_app_dns_name" {
  description = "DNS name of the web server"
  value       = aws_instance.web_server_app.public_dns
}

output "web_server_app_instance_id" {
  description = "Instance ID of the web server"
  value       = aws_instance.web_server_app.id
}

output "web_server_app_name" {
  description = "Name of the web server"
  value       = aws_instance.web_server_app.tags.Name
}
