##################
# Azure Provider #
##################
# define terraform provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
  # define where will be storage the tfstate
  backend "azurerm" {
    resource_group_name  = "rg-lab-akv" # this value must be changed according to your storage account data
    storage_account_name = "sa-lab-akv" # this value must be changed according to your storage account data
    container_name       = "cn-lab-akv" # this value must be changed according to your storage account data
    key                  = "terraform.tfstate"
  }

  required_version = ">= 0.14.9"
}

# configure the azure provider
provider "azurerm" {
  features {}

  subscription_id = var.azure-subscription-id
  client_id       = var.azure-client-id
  client_secret   = var.azure-client-secret
  tenant_id       = var.azure-tenant-id
}