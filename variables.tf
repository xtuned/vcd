variable "vcd_pass" {
  description = "VCD Password"
  type        = string
  default     = "XgYw!cvf3!ad"
}
variable "vcd_url" {
  description = "VCD URL"
  type        = string
  default     = "https://vcd.voldemort.zpod.io/api"
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
    name          = string
    full_name     = string
    description   = string
  }))
}