resource "proxmox_virtual_environment_vm" "Plex" {
    node_name    = var.pve_node
    vm_id        = var.vm_id
    name         = var.vm_name
    description  = "Docker Ubuntu VM"

    cpu {
        cores = var
        type  = "host"
        architecture = "x86_64"
    }

    memory {
        dedicated = var.dedicated_memory
    }

    network_device {
        bridge  = var.vlan_id
    }

    disk {
        datastore_id = var.proxmox_storage
        size         = var.disk_size
        interface    = "scsi0"
    }

    clone {
        vm_id = "9001"
    }

    initialization {
        ip_config {
            ipv4 {
                address = var.ipv4_address
            }
        }

    }

}
