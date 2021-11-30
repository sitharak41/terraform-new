terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.87.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = var.subid
  client_id       = var.clientid
  client_secret   = var.client_secret
  tenant_id       = var.tenantid
}
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstatefile"
    storage_account_name = "terraformstorage201"
    container_name       = "tfstatecontainer"
    key                  = "JoKkDm1I2gbibtz/EpK16K+KA+dfbf9xHMxI7wVswmwJCgfISVO6PfBf4krxe2R6MTh3YmOyCk4mPbihD41jCg=="
  }
}