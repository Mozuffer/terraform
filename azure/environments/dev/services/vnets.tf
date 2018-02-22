# Uqudo vnet resource
module "vnet_1" {
	source                  = "../../../modules/network/vnet"
	name			= "vnet_1"
	address_space		= ["10.0.0.0/16"]
	location		= "${var.location}"
	rg_name			= "${azurerm_resource_group.rg.name}"
}
