resource "azurerm_storage_account" "storage_acct" {
    name                = "${var.name}"
    resource_group_name = "${var.rg_name}"
    location            = "${var.location}"
    account_replication_type = "${var.account_replication_type}"
    account_tier = "${var.account_tier}"
}
