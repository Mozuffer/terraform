
module "storage_acct_1" {
	 source 	= "../../../modules/storage"
	 name		= "${var.rg_name}storage98767"
	 rg_name 	= "${var.rg_name}"
         location       = "${var.location}"
	 account_replication_type = "LRS"
         account_tier = "Standard"
}
