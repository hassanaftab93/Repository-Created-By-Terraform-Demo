provider "oci" {

}

terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 5.0"
    }
  }
#   backend "azurerm" {
#     resource_group_name  = "tfstate"
#     storage_account_name = "tfstatesw0tf"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
  # }
}