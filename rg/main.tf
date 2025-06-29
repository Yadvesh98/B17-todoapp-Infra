resource "azurerm_resource_group" "rgs" {

    for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

output "rg_ids" {
  value = azurerm_resource_group.rgs
}

# resource "azurerm_storage_account" "storage" {
#   name                     = "examplestoracct01"  # globally unique name
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
