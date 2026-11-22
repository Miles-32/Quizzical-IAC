terraform {
    required_providers {
        azurem = {
            source = "hashicorp/azurem"
            version = "~> 4.0"
        }
    }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}