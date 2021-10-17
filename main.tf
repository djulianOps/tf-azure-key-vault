##################
# Resource Group #
##################
resource "random_string" "resource_code" {
  length  = 5
  number  = true
  lower   = true
  upper   = false
  special = false
}

# Create a resource group for security
resource "azurerm_resource_group" "lab-security" {
  name     = "akv-lab-security-${var.environment}"
  location = var.location
}

############################
# Module - Azure key vault #
############################
module "keyvault" {
  source              = "./modules/akv"
  name                = "${var.name}-${random_string.resource_code.result}"
  location            = azurerm_resource_group.lab-security.location
  resource_group_name = azurerm_resource_group.lab-security.name

  enabled_for_deployment          = var.akv-vm-deployment
  enabled_for_disk_encryption     = var.akv-disk-encryption
  enabled_for_template_deployment = var.akv-template-deployment
  tags                            = var.tags

  policies = {
    full = {
      tenant_id               = var.azure-tenant-id
      object_id               = var.akv-full-object-id
      key_permissions         = var.akv-key-permissions-full
      secret_permissions      = var.akv-secret-permissions-full
      certificate_permissions = var.akv-certificate-permissions-full
      storage_permissions     = var.akv-storage-permissions-full
    }
    read = {
      tenant_id               = var.azure-tenant-id
      object_id               = var.akv-read-object-id
      key_permissions         = var.akv-key-permissions-read
      secret_permissions      = var.akv-secret-permissions-read
      certificate_permissions = var.akv-certificate-permissions-read
      storage_permissions     = var.akv-storage-permissions-read
    }
  }

  secrets = var.akv-secrets
}