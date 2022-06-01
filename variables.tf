variable "subscription_id" {
  description = "The GUID of the subscription."
  type        = string
  validation {
    condition     = length(regex("^[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}$", var.subscription_id)) != 3
    error_message = "Subscription Id should be a valid GUID."
  }
}

variable "tags" {
  description = "Map of tag key and values to apply to subscription."
  type        = map(string)
}
