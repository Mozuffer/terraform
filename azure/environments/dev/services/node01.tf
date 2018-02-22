module "kube-node-vm01-pub-ip01" {
	source = "../../../modules/network/public_ip"
	name                         = "kube-node-vm01-pub-ip01"
        location                     = "${var.location}"
        rg_name        = "${azurerm_resource_group.rg.name}"
        public_ip_address_allocation = "dynamic"

}
module "kube-node-vm01-net-if-01" {
	source = "../../../modules/network/interface"
	rg_name = "${azurerm_resource_group.rg.name}"
	location = "${var.location}"
	net_if_name = "kube-node-vm01-net-if01"
	net_if_config_name = "kube-node-vm01-net-if01-config"
	subnet_id = "${module.subnet_1.id}"
	private_ip_address_allocation = "dynamic"
	public_ip_address_id = "${module.kube-node-vm01-pub-ip01.id}"
}
module "kube-node-vm01" {
	source = "../../../modules/compute/centos7"
	mv_name = "kube-node-vm01"
	rg_name = "${azurerm_resource_group.rg.name}"
	location = "${var.location}"
	network_interface_ids = "${module.kube-node-vm01-net-if-01.id}" 
	vm_size = "Standard_A0"
	os_disk_name = "kube-node01-os-disk"
	caching = "ReadWrite"
	create_option = "FromImage"
	managed_disk_type = "Standard_LRS"
	computer_name = "kube-node-vm01"
	ssh_pub_key_path = "/home/${var.admin_username}/.ssh/authorized_keys" 
	ssh_key_data = "${file("admin.pub")}"
	admin_username = "${var.admin_username}"
	admin_password = "${var.admin_password}"
	diagnostic_enabled = "${var.diagnostic_enabled}"
	diagnostic_storage_uri = "${module.storage_acct_1.primary_blob_endpoint}"
}