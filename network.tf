resource "azurerm_subnet" "main" {
  name                 = var.kubernetes_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
  address_prefixes     = [var.node_cidr]
  service_endpoints    = ["Microsoft.Storage"]
}

resource "azurerm_route_table" "main" {
  name                = var.kubernetes_subnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_subnet_route_table_association" "main" {
  subnet_id      = azurerm_subnet.main.id
  route_table_id = azurerm_route_table.main.id
}
