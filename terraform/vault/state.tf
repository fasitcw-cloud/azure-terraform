
resource "azurerm_storage_account" "example" {
  name                     = "tcwstrgaccnt78uri3u"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  enable_https_traffic_only = true

  lifecycle {
    prevent_destroy = true
  }

  blob_properties {
    versioning_enabled = true
  }
}

# output "storage_account_access_keys" {
#   value = azurerm_storage_account.example.primary_access_key
#   sensitive = true
# }


resource "azurerm_storage_container" "example" {
  name                  = "terraform-state"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "blob"
}

