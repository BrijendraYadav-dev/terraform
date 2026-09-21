terraform {
    required_version = "1.14.6"
    required_providers { 
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "3.64.0"
        }
    }
backend "azurerm" {
        resource_group_name  = "Backend_RG"
        storage_account_name = "axionstatestorage"
        container_name       = "axioncontainer"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
    features {}
    subscription_id = "357d264e-5aaa-460e-a67d-e8db93e8e86e"
}



