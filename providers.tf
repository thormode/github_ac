terraform {
  required_version = "~> 1.2.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.23.0"
    }
  }
  ackend "azurerm" {
    resource_group_name  = "tfstatestormod"
    storage_account_name = "terraformstatetormod"
    container_name       = "tfstateaksclustertormod"
    key                  = "tfstateaksclustertormod.tfstate"
  }
}
provider "azurerm" {
features {}
}

provider "github" {
  token = data.azurerm_key_vault_secret.secret1.value
}
