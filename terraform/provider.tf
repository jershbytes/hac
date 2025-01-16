terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.66.3"
    }
  }
}

provider "proxmox" {
  endpoint = var.virtual_environment_endpoint
  api_token = var.proxmox_ve_api_token
  insecure = true

  node {
    name = var.pve_node
    address = var.virtual_environment_endpoint
  }
}

module "proxmox" {
  source = "./proxmox"
}