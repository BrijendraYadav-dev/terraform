variable "resource_groups" {
  description = "A map of resource groups to create"
  type = map(object({
    name       = string
    location   = string
    tags       = map(string)
    managed_by = string
  }))

}
  variable "virtual_networks" {
  description = "A map of virtual networks to create"  
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    vnet-subnets        = map(object({
      vnet-subnet-name             = string
      vnet-subnet-address-prefixes = list(string)
    }))
  }))
  
}


variable "public_ips" {
  description = "A map of public IPs to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
    tags                = map(string)
  }))
}
