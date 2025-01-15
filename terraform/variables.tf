# Define each required variable
variable "init_username" {
  description = "Username for initial configuration"
  type        = string
}

variable "prox_ip_address" {
  description = "IP address for Proxmox server"
  type        = string
}

variable "vlan_gateway" {
  description = "Gateway IP for VLAN"
  type        = string
}

variable "virtual_environment_endpoint" {
  description = "Endpoint for virtual environment API"
  type        = string
}

variable "ssh_username" {
  description = "Username for SSH access"
  type        = string
}

variable "init_password" {
  description = "Password for initial configuration"
  type        = string
  sensitive   = true
}

variable "virtual_environment_api" {
  description = "API endpoint for virtual environment"
  type        = string
}

variable "ssh_password" {
  description = "Password for SSH access"
  type        = string
  sensitive   = true
}
