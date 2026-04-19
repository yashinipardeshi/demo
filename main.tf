# terraform {
#   # backend "azurerm" {
#   #   storage_account_name = "yashinipsa"
#   #   container_name       = "terraform-state-dev"
#   #   key                  = "terraform.tfstate"
#   #   use_azuread_auth     = true
#   #   use_oidc             = true
#   #   subscription_id      = "9919455d-a384-407d-849e-190bad4af9d7"
#   #   tenant_id            = "550d7d5c-247a-472e-af33-9915c948872b"
#   #   resource_group_name  = "stcapp-rg"
#   # }

#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 4.0"
#     }
#   }
# }

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}



resource "azurerm_resource_group" "demo" {
  name     = "azure-terraform-git"
  location = "East US 2"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountnamehtyy"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

terraform {
  cloud {
    organization = "demo1303"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      project = "demo"

      tags = {
        layer = "networking"
        source = "cli"
      }
    }
  }
}

