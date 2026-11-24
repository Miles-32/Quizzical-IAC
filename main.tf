resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}"
  location = var.location
}

resource "random_string" "suffix" {
  length  = 6
  special = false # only letters and numbers allowed
  upper   = false # names must be lowercase
}

resource "azurerm_storage_account" "site" {
  name                     = "st${var.project_name}${random_string.suffix.result}" # e.g. stquizzical7hrs1a
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}