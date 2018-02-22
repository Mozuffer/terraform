#Uqudo Create virtual machine
resource "azurerm_virtual_machine" "vm" {
    name                  = "${var.mv_name}"
    location              = "${var.location}"
    resource_group_name   = "${var.rg_name}"
    network_interface_ids = ["${var.network_interface_ids}"]
    vm_size               = "${var.vm_size}"

    storage_os_disk {
        name              = "${var.os_disk_name}"
        caching           = "${var.caching}"
        create_option     = "${var.create_option}"
        managed_disk_type = "${var.managed_disk_type}"
    }
    storage_image_reference {

        publisher = "${var.centos_image_publisher}"
        offer     = "${var.centos_image_offer}"
        sku       = "${var.centos_sku}"
        version   = "${var.centos_version}"
    }
    os_profile {
        computer_name  = "${var.computer_name}"
        admin_username = "${var.admin_username}"
        admin_password = "${var.admin_password}"
    }
    os_profile_linux_config {
        disable_password_authentication = true

        ssh_keys {
                 path     = "${var.ssh_pub_key_path}"
                 key_data = "${var.ssh_key_data}"
        }
      }
    boot_diagnostics {
        enabled = "${var.diagnostic_enabled}"
        storage_uri = "${var.diagnostic_storage_uri}"
    }
}
