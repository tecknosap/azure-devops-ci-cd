terraform {
  required_version = ">= 1.0"

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {

  }
}