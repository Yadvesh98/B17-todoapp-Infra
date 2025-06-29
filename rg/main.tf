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


# Garam Chai + Pakode – Classic combo. Thoda ginger tea, thoda aloo-pyaaz pakoda, aur bas... mood ban gaya.

# Old Songs + Rain – "Rimjhim gire saawan..." type gaane lagao, earphones pe ya speaker pe, aur khidki ke paas baith jao.

# Diary likhna ya journaling – Mausam thoda emotional sa hota hai, toh likh daalo apne jazbaat.