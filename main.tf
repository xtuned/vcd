resource "vcd_org" "my-org" {
  for_each         = var.orgs
  name             = each.value.name
  full_name        = each.value.full_name
  description      = each.value.description
  is_enabled       = true
  delete_recursive = true
  delete_force     = true

  vapp_lease {
    maximum_runtime_lease_in_sec          = each.value.maximum_runtime_lease_in_sec
    power_off_on_runtime_lease_expiration = each.value.power_off_on_runtime_lease_expiration
    maximum_storage_lease_in_sec          = each.value.maximum_storage_lease_in_sec
    delete_on_storage_lease_expiration    = each.value.delete_on_storage_lease_expiration
  }
  vapp_template_lease {
    maximum_storage_lease_in_sec       = each.value.maximum_storage_lease_in_sec
    delete_on_storage_lease_expiration = each.value.power_off_on_runtime_lease_expiration
  }
}