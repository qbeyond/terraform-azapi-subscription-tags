# Azure Subscription Tagging Terraform module
Add tags to any azure subscription via terraform

 ## Features
 This module uses the ARM-Rest-Api via [azapi provider](https://registry.terraform.io/providers/Azure/azapi/latest/docs) to set tags on an subscription.
 It is *not* using the [azurerm_subscription resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) as this is using other APIs then the ARM Apis which is causing permission problems - especially when using CSP/AzurePlan-Subscriptions.

 The tags are added. If a tag already exists it will be overridden. Other existing tags will **not** be deleted.