
module "subnet_1" {
	source 			= "../../../modules/network/subnet"
	name 			= "subnet-1"
	address_prefix		= "10.0.1.0/24"
	virtual_network_name  	= "${module.vnet_1.name}" 
	rg_name			= "${azurerm_resource_group.rg.name}"
}
