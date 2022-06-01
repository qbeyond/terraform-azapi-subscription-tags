terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "~> 0.3.0"
    }
  }
}

# The resource tags always exist. Therefore we need to use update resource
resource "azapi_update_resource" "example" {
  type      = "Microsoft.Resources/tags@2021-04-01"
  parent_id = "/subscriptions/${var.subscription_id}"
  name      = "default"
  body = jsonencode({
    properties = {
      tags = var.tags
    }
  })
}
