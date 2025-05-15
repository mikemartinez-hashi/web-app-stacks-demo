# Variables for Web Server

variable "server" {
  type = string
}

variable "demo" {
  type = string
}

variable "environment" {
  type = string
}

variable "owner" {
  type = string
}

variable "region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

# variable "security_groups" {
#   type = list(string)
# }

variable "front_door_security_group" {
  type = string
}

variable "access_security_group" {
  type = string
}

variable "vpc_id" {
  type = string
}
