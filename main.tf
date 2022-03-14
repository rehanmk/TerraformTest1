# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.99.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


backend "azurerm" {
    resource_group_name   = "DevOpststate-rg"
    storage_account_name  = "devopststate"
    container_name        = "tfstate"
    key                   = "qXPzkoeiD4bEj1Av3Ai2CbhnlyFrABftAzN25hieBubu1yp2SWsXnR9C45UMBz82cbfwKzjluAf2ihpOZuzF5A==~"
}

