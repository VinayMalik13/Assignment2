output "resource_group_name" {
  value = azurerm_resource_group.humber_rg.name
  description = "Name of created resource group"
}

output "location" {
  value = azurerm_resource_group.humber_rg.location
}