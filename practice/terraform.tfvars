resource_groups = {
  "rg1" = {
    name       = "rg1"
    location   = "East US"
    tags       = { environment = "dev" }
    managed_by = "user1"
  }
  
}

virtual_networks = {
  "vnet1" = {
    name                = "vnet1"
    location            = "East US"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0.0/16"]
    vnet-subnets        = {
      "subnet1" = {
        vnet-subnet-name             = "subnet1"
        vnet-subnet-address-prefixes = ["10.0.1.0/24"]
      }

    }
  }

}

public_ips = {
  "public_ip1" = {
    name                = "public_ip1"
    location            = "East US"
    resource_group_name = "rg1"
    allocation_method   = "Static"
    sku                 = "Standard"
    tags                = { environment = "dev" }
  }
}
