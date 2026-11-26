data "azuread_user" "michael_johnson" {
  user_principal_name = "michael.johnson@iamlabenv04.onmicrosoft.com"
}

resource "azuread_group_member" "michael_it" {
  group_object_id  = azuread_group.department["IT"].object_id
  member_object_id = data.azuread_user.michael_johnson.object_id
}