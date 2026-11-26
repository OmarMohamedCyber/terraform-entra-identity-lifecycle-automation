locals {
  departments = toset([
    "IT",
    "HR",
    "Finance",
    "Clinical",
    "Operations"
  ])
}

resource "azuread_group" "department" {
  for_each = local.departments

  display_name     = "SG-${each.value}-Users"
  description      = "Security group for ${each.value} department users"
  security_enabled = true
}
