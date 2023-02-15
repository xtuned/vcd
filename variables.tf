variable "vcd_pass" {
  description = "VCD Password"
  type        = string
  default     = "hardpassword"
}
variable "vcd_url" {
  description = "VCD URL"
  type        = string
  default     = "example.vcd.url"
}
variable "vcd_max_retry_timeout" {
  type = number
  description = "number of max retry"
  default = 10
}
variable "vcd_allow_unverified_ssl" {
  type = bool
  description = "allow insecure connection"
  default = true
}

variable "orgs" {
  type = map(object({
    name                                  = string
    full_name                             = string
    description                           = string
    maximum_runtime_lease_in_sec          = number
    power_off_on_runtime_lease_expiration = bool
    maximum_storage_lease_in_sec          = number
    delete_on_storage_lease_expiration    = bool
  }))
}