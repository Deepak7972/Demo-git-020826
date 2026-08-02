resource "azurerm_resource_group" "rg" {
  for_each = var.resource

  name     = each.value.name
  location = each.value.location
}

resource = {
  rg1 = {
    name     = "rg1"
    location = "centralus"
  }
}