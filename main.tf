terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

resource "azurerm_resource_group" "kubernetsRGES21" {
  name     = "ResouceGroupES21Kubernets"
  location = "westus2"
}

resource "azurerm_kubernetes_cluster" "aksES21" {
  name                = "aksES21"
  location            = azurerm_resource_group.kubernetsRGES21.location
  resource_group_name = azurerm_resource_group.kubernetsRGES21.name
  dns_prefix          = "akses21"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
 identity {
    type = "SystemAssigned"
  }
  
}