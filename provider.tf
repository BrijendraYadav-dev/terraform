terraform {
    required_version = "1.14.6"
    required_providers { 
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "3.64.0"
        }
    }
backend "azurerm" {
        resource_group_name  = "rg-terraform-state"
        storage_account_name = "stterraformstate"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
    features {}
    subscription_id = "357d264e-5aaa-460e-a67d-e8db93e8e86e"
}



