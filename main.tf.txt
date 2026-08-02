terraform {
 required_provider {
  azurerm = {
   version = "4.80.0"
   source = "hashicorp/azurerm"
 	}
 	}
	}

provider "azurerm" {
features {}

resource "azurerm_resource_group" "subnet" {
 name =     "rg1"
 location = "eastus" 
  }