terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "= 3.10.0"
    }
  }
}

provider "azuread" {
  tenant_id = "6b67d246-582a-4be3-85d8-409fe4cceee7"
}
