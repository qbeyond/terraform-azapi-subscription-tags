terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "0.3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azapi" {
  # Configuration options
}

provider "azurerm" {
  features {
  }
}

data "azurerm_subscription" "current" {
}

module "subscription_tags" {
  source          = "../.."
  subscription_id = data.azurerm_subscription.current.subscription_id
  tags = {
    "TagKey" = "TagValue"
  }
}
