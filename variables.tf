#############
# Variables #
#############

# environment
variable "environment" {
  type        = string
  description = "Optional Input - This variable defines the environment to be built"
}

# azure region
variable "location" {
  type        = string
  description = "Optional Input - Azure region where the resource group will be created"
  default     = "westeurope"
}

# tags
variable "tags" {
  description = "Optional Input - A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    Workload        = "Demo"
    Infraestructure = "Terraform"
    Environment     = "Laboratory"
  }
}