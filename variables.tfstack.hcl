# Stacks Variables

variable "regions" {
  type = set(string)
}

variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "role_arn" {
  type = string
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
}

variable "environment" {
  type = string
}

variable "owner" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "server" {
  type = string
}

variable "demo" {
  type = string
}

variable "front_door_security_group" {
  type = string
}

variable "access_security_group" {
  type = list(string)
}

# HCP configuration
// variable "HCP_CLIENT_ID" {
//   type        = string
//   description = "HashiCorp client ID"
//   sensitive   = true
// }

// variable "HCP_CLIENT_SECRET" {
//   type        = string
//   description = "HashiCorp client secret"
//   sensitive   = true
// }
