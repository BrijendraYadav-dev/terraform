resource "azurerm_resource_group" "rg" {
  for_each   = var.resource_groups
  name       = each.value.name
  location   = each.value.location
  tags       = each.value.tags
  managed_by = each.value.managed_by
}

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.virtual_networks
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.vnet-subnets
    content {
      name             = subnet.value.vnet-subnet-name
      address_prefixes = subnet.value.vnet-subnet-address-prefixes
    }

  }
}


resource "azurerm_public_ip" "public_ip" {
  for_each            = var.public_ips
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
  tags                = each.value.tags
}

