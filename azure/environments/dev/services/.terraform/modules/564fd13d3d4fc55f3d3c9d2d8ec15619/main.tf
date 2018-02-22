resource "azurerm_public_ip" "pub_ip" {
        name                         = "${var.name}"
        location                     = "${var.location}"
        resource_group_name          = "${var.rg_name}"
        public_ip_address_allocation = "${var.public_ip_address_allocation}"
}
