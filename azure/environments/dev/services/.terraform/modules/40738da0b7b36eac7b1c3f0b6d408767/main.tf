resource "azurerm_network_interface" "net_if" {
    name                = "${var.net_if_name}"
    location            = "${var.location}"
    resource_group_name = "${var.rg_name}"

    ip_configuration {
        name                          = "${var.net_if_config_name}"
        subnet_id                     = "${var.subnet_id}"
        private_ip_address_allocation = "${var.private_ip_address_allocation}"
        public_ip_address_id          = "${var.public_ip_address_id}"
    }
}
