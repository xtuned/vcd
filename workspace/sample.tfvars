orgs = {
  org1 = {
    name        = "test_org"
    full_name   = "My organization"
    description = "The pride of my work"
    maximum_runtime_lease_in_sec          = 3600
    power_off_on_runtime_lease_expiration = true
    maximum_storage_lease_in_sec          = 3600
    delete_on_storage_lease_expiration    = true
  },
  org2 = {
    name        = "another_org"
    full_name   = "same organization"
    description = "new org"
    maximum_runtime_lease_in_sec          = 3600
    power_off_on_runtime_lease_expiration = true
    maximum_storage_lease_in_sec          = 3600
    delete_on_storage_lease_expiration    = true
  }
}