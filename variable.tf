variable "prefix" {
  description = "prefix which should be used for all resources"
  default     = "Sithara"
}
variable "location" {
  description = " Azure region in which all resource will be created "
  default     = "australiaeast"
}
variable "addressspace" {
  default = ["10.0.0.0/16"]
}
variable "name" {
  default = "internal"
}
variable "addressprefix" {
  default = ["10.0.2.0/24"]
}
variable "ipname" {
  default = "internal"
}
variable "ipaddressallocation" {
  default = "Dynamic"
}
variable "sku" {
  default = "Standard_F2"
}
variable "admin" {
  default = "adminuser"
}
variable "password" {
  default = "P@ss@!@#$"
}
variable "cach" {
  default = "ReadWrite"
}
variable "storagetype" {
  default = "Standard_LRS"
}
variable "publisher" {
  default = "MicrosoftWindowsServer"
}
variable "offer" {
  default = "WindowsServer"
}
variable "sku1" {
  default = "2016-Datacenter"
}
variable "version1" {
  default = "latest"
}
variable "subid" {
  default = "77d75552-cb82-405a-8298-1eeeae62917b"
}
variable "clientid" {
    default = "95846f43-aba6-4f21-9e41-db6f100f57c6" 
}
variable "tenantid" {
  default = "84547758-5fa8-4ad3-9a93-3cf030d76312"
}
variable "client_secret" {
  default = "LMh7Q~BVS_6eR6YAro3Y.IDEl7GF3~4Pv3dUn"
}