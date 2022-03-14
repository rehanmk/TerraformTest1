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
    key                   = "+uRmL73LSnXvSEGMG9pd26R28qvgFS9z3BcZrg+NHAExrs9HkRhOjNGWxT9c/J0iDcwF2t+txjCf0ZfDayV6pw=="
}

