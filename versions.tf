terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    use_cli              = true
    use_azuread_auth     = true
    storage_account_name = "tfstatefebin2026"
    container_name       = "tfstate"
    key                  = "monitoring-cicd.tfstate"
  }
}

provider "azurerm" {
  features {}
}