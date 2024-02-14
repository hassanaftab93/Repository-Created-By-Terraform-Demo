provider "aws" {
  
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
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