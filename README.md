# Azure Subscription Tagging Terraform module
Add tags to any azure subscription via terraform

 ## Features
 This module uses the ARM-Rest-Api via [azapi provider](https://registry.terraform.io/providers/Azure/azapi/latest/docs) to set tags on an subscription.
 It is *not* using the [azurerm_subscription resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) as this is using other APIs then the ARM Apis which is causing permission problems - especially when using CSP/AzurePlan-Subscriptions.

 The tags are added. If a tag already exists it will be overridden. Other existing tags will **not** be deleted.

 <!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | >= 0.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | >= 0.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_update_resource.subscription_tags](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/update_resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ignore_missing_property"></a> [ignore\_missing\_property](#input\_ignore\_missing\_property) | Whether ignore not returned properties like credentials in body to suppress plan-diff | `bool` | `false` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The GUID of the subscription. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tag key and values to apply to subscription. | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->