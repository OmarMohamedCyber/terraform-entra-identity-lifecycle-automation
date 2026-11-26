data "azuread_client_config" "current" {}

output "terraform_authenticated_tenant" {
  value = data.azuread_client_config.current.tenant_id
}

output "terraform_authenticated_object_id" {
  value = data.azuread_client_config.current.object_id
}
