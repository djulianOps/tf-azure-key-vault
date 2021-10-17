##################
# Authentication #
##################

# azure authentication variables
variable "azure-subscription-id" {
  type        = string
  description = "Required Input - Azure Subscription ID"
  default     = ""
}

variable "azure-client-id" {
  type        = string
  description = "Required Input - Azure Client ID"
  default     = ""
}

variable "azure-client-secret" {
  type        = string
  description = "Required Input - Azure Client Secret"
  default     = ""
}

variable "azure-tenant-id" {
  type        = string
  description = "Required Input - Azure Tenant ID"
  default     = ""
}
