terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = ">= 0.5.0"
    }
  }
}

# The resource tags always exist. Therefore we need to use update resource
resource "azapi_update_resource" "subscription_tags" {
  type      = "Microsoft.Resources/tags@2021-04-01"
  parent_id = "/subscriptions/${var.subscription_id}"
  name      = "default"
  ignore_missing_property = var.ignore_missing_property
  body = jsonencode({
    properties = {
      tags = var.tags
    }
  })
}
