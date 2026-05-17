provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "wazuh_rg" {
  name     = "WazuhX-ResourceGroup"
  location = "East US"
}

resource "azurerm_virtual_network" "wazuh_vnet" {
  name                = "wazuhx-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.wazuh_rg.location
  resource_group_name = azurerm_resource_group.wazuh_rg.name
}

resource "azurerm_linux_virtual_machine" "wazuh_manager" {
  name                = "WazuhX-Manager"
  resource_group_name = azurerm_resource_group.wazuh_rg.name
  location            = azurerm_resource_group.wazuh_rg.location
  size                = "Standard_B2ms"
  admin_username      = "azureuser"
  network_interface_ids = []

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }
}
