##################
# Authentication #
##################

# azure authentication variables
variable "azure-subscription-id" {
  type        = string
  description = "Required Input - Azure Subscription ID"
  default     = "0000-0000-0000-0000-000000000000"
  sensitive   = true
}

variable "azure-client-id" {
  type        = string
  description = "Required Input - Azure Client ID"
  default     = "0000-0000-0000-0000-000000000000"
  sensitive   = true
}

variable "azure-client-secret" {
  type        = string
  description = "Required Input - Azure Client Secret"
  default     = "0000-0000-0000-0000-000000000000"
  sensitive   = true
}

variable "azure-tenant-id" {
  type        = string
  description = "Required Input - Azure Tenant ID"
  default     = "0000-0000-0000-0000-000000000000"
  sensitive   = true
}
