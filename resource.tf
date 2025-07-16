resource "azurerm_resource_group" "storeterra" {

    name     = "terra-RG"

    location = "East US"

}

resource "azurerm_storage_account" "saterra" {

    name                     = "terraharika"

    resource_group_name      = azurerm_resource_group.storeterra.name

    location                 = azurerm_resource_group.storeterra.location

    account_tier             = "Standard"

    account_replication_type = "LRS"

}

resource "azurerm_storage_container" "sacontainer" {

    name                  = "terra-container100"

    storage_account_id  = azurerm_storage_account.saterra.id

    container_access_type = "private"

}
 