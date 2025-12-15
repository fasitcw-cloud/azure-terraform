terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.0"
      
    }
  }
}

provider "azurerm" {
	features{}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateacctcw"
    container_name       = "tfstatecontainer"
    key                  = "prod/terraform.tfstate"
  }
}



#provider "vault" {
#
#	address = "http://127.0.0.1:8200"
#	token = "hvs.nwibmTdNDnhmOiwcsAVExt2n"
#}
