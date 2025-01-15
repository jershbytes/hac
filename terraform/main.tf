terraform {
  required_version = ">= 1.0.0"

terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.69.1"
    }
  }
}

provider "proxmox" {
  endpoint = var.virtual_environment_endpoint
  password = var.ssh_password
  username = "root@pam"
  insecure = true

  ssh {
    agent = true
    username = "root"
    password = var.ssh_password

    node {
      name    = "chonk-prox"
      address = var.prox_ip_address
    }
  }
}

module "proxmox" {
  source = "./proxmox"

  virtual_environment_endpoint = var.virtual_environment_endpoint
  virtual_environment_api = var.virtual_environment_api
  vlan_gateway = var.vlan_gateway
  ssh_password = var.ssh_password
  ssh_username = var.ssh_username
  prox_ip_address = var.prox_ip_address
  npm_ip_address = var.npm_ip_address
  init_username = var.init_username
  init_password = var.init_password
