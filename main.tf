
resource "dns_a_record_set" "this" {
  zone      = var.zone
  name      = var.name
  addresses = var.ipv4
  ttl       = var.ttl
}

# resource "dns_aaaa_record_set" "this" {
#   zone      = var.zone
#   name      = var.name
#   addresses = var.addresses
#   ttl       = var.ttl
# }

# resource "dns_cname_record" "this" {
#   zone  = var.zone
#   name  = var.name
#   cname = var.cname
#   ttl   = var.ttl
# }

# resource "dns_ns_record_set" "this" {
#   zone        = var.zone
#   name        = var.name
#   nameservers = var.nameservers
#   ttl         = var.ttl
# }

# resource "dns_ptr_record" "this" {
#   zone = var.zone
#   name = "r._dns-sd"
#   ptr  = "example.com."
#   ttl  = 300
# }