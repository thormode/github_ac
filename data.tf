data "azurerm_key_vault" "thomasthorntoncloudkv" {
  name                = "exltormodpattest"
  resource_group_name = "example-resources"
}

data "azurerm_key_vault_secret" "secret1" {
  name         = "supersecretpattoken"
  key_vault_id = data.azurerm_key_vault.thomasthorntoncloudkv.id
}