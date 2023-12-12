terraform {
  backend "azurerm" {
    resource_group_name  = "IaC-demo"
    storage_account_name = "ziluiac"
    container_name       = "tfstate"
    key                  = "dev1.tfstate"
  }
}
