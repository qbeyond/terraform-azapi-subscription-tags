terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>2.7"
    }
  }
}


data "azapi_resource_id" "tags" {
  type      = "Microsoft.Resources/tags@2023-07-01"
  parent_id = "/subscriptions/${var.subscription_id}"
  name      = "default"
}
# The resource tags always exist. Therefore we need to use resource action.
resource "azapi_resource_action" "subscription_tags" {
  type        = "Microsoft.Resources/tags@2023-07-01"
  resource_id = data.azapi_resource_id.tags.id
  method      = "PUT"
  body = {
    properties = {
      tags = var.tags
    }
  }
}
