terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

    # backend "azurerm" {
    #   storage_account_name = "tcwstrgaccnt78uri3u"
    #   container_name       = "terraform-state"
    #   key                  = "terraform.tfstate"

    #   # rather than defining this inline, the Access Key can also be sourced
    #   # from an Environment Variable - more information is available below.
    #   access_key = "wyi7VwOgSttWVWrf+Jwwa0+txMpk0TBWX+vYSOyhhvvvZ2zCoiG+mf3iBBu0Z7Vz22RraWKicKwH+AStVDNUMA=="
    # }
}

provider "azurerm" {
  features {}

  subscription_id = "aa8ee686-59da-4400-9718-140811c68c33"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  client_id       = "ece01f82-9dd4-4bae-b86d-51b5d4937648"
  client_secret   = "zxy8Q~cgnRnhbVNKwukWBvEs_XxS1F3If4TjScmU"
}

# provider "vault" {
#   address = "http://127.0.0.1:8200"
#   token   = "hvs.Qudfb5teI8aUQMS8CigOdynJ"
#}
