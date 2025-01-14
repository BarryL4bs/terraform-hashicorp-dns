
variable "cname" {
  type        = string
  description = "Canonical Name"
  default     = null
}

variable "ipv4" {
  type = list(string)

  validation {
    condition     = alltrue([for ip in var.ipv4 : provider::assert::ipv4(ip)]) && (var.ipv4 != null || var.ipv4 != "")
    error_message = "Invalid IP(s) address(es)"
  }

  default = []
}

variable "ipv6" {
  type = list(string)

  validation {
    condition     = alltrue([for ip in var.ipv6 : provider::assert::ipv6(ip)]) && (var.ipv6 != null || var.ipv6 != "")
    error_message = "Invalid IP(s) address(es)"
  }

  default = []
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

  validation {
    condition     = endswith(substr(var.zone, -1, -1), ".") || var.zone == null || var.zone == ""
    error_message = "You must declare a FQDN of your zone. e.g. 'example.com.'"
  }
}

