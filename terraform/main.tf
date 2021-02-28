# https://registry.terraform.io/providers/hashicorp/azurerm/latest/doc
#Indicamos el proveedor cloud
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# crea un service principal y rellena los siguientes datos para autenticar
provider "azurerm" {
  features {}
  subscription_id = "d59dc4e4-6d9f-4760-9b5b-2c6a7297f90b"
  client_id       = "667e9531-e32f-41c6-9be9-63a4dc0090c0"
  client_secret   = "mMQWiYZQ7_VOVWFASPTKw1yBAuQW-5WgKZ"
  tenant_id       = "899789dc-202f-44b4-8472-a6d40f9eb440"
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
#Creamos un grupo de recursos para los objetos que iremos creando
resource "azurerm_resource_group" "rg" {
    name     =  "kubernetes_rg"
    location = var.location

    tags = {
        environment = "CP2"
    }

}

# Storage account
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

resource "azurerm_storage_account" "mystaccount914" {
    name                     = "mystaccount914" 
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "CP2"
    }

}
