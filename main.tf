resource "vcd_org" "my-org" {
  for_each         = var.orgs
  name             = each.value.name
  full_name        = each.value.full_name
  description      = each.value.description
  is_enabled       = true
  delete_recursive = true
  delete_force     = true

  vapp_lease {
    maximum_runtime_lease_in_sec          = 3600 # 1 hour
    power_off_on_runtime_lease_expiration = true
    maximum_storage_lease_in_sec          = 0 # never expires
    delete_on_storage_lease_expiration    = false
  }
  vapp_template_lease {
    maximum_storage_lease_in_sec       = 604800 # 1 week
    delete_on_storage_lease_expiration = true
  }
}