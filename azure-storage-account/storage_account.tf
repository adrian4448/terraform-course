resource "azurerm_resource_group" "resource_group" {
  name     = ""
  location = var.location

  tags = local.commons_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = ""
  resourcstorage_accounte_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.commons_tags
}

resource "azurerm_storage_container" "storage_account_container" {
  name                 = ""
  storage_account_name = azurerm_storage_account.storage_account.name
}