variable "mv_name" {}
variable "rg_name" {}
variable "location" {}
variable "network_interface_ids" {}
variable "vm_size" {}
variable "os_disk_name" {}
variable "caching" { default = "ReadWrite"}
variable "create_option" { default = "FromImage"}
variable "managed_disk_type" { default = "Standard_LRS" }
variable "computer_name" {}
variable "centos_image_publisher" { default = "OpenLogic" }
variable "centos_image_offer" { default = "CentOS" }
variable "centos_version" { default = "latest" }
variable "centos_sku" { default = "7.3" }
variable "ssh_pub_key_path" {}
variable "ssh_key_data" {}
variable "admin_username" {}
variable "admin_password" {}
variable "diagnostic_enabled" {}
variable "diagnostic_storage_uri" {}
