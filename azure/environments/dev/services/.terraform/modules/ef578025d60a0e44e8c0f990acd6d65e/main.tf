
resource "azurerm_subnet" "subnet" {
  name                  = "${var.name}"
  address_prefix        = "${var.address_prefix}"
  virtual_network_name  = "${var.virtual_network_name}"
  resource_group_name   = "${var.rg_name}"
}
