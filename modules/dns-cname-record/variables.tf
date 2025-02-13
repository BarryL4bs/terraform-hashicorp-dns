
variable "cname" {
  type        = string
  description = "Canonical Name"
  default     = null
}

variable "name" {
  type        = string
  description = "value"

  default = ""
}

variable "ttl" {
  type        = number
  description = "Time to live for the record"
  default     = 300

  validation {
    condition     = var.ttl >= 300
    error_message = "TTL is less than 300 seconds"
  }
}


variable "zone" {
  type        = string
  description = "DNS zone name"
  default = ""

  validation {
    condition     = endswith(substr(var.zone, -1, -1), ".") || var.zone == null || var.zone == ""
    error_message = "You must declare a FQDN of your zone. e.g. 'example.com.'"
  }
}
