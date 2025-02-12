
resource "dns_a_record_set" "this" {
  count = var.enable_ipv4 ? 1 : 0
  
  zone      = var.zone
  name      = var.name
  addresses = var.ipv4
  ttl       = var.ttl
}

resource "dns_aaaa_record_set" "this" {
  count = var.enable_ipv6 ? 1 : 0

  zone      = var.zone
  name      = var.name
  addresses = var.ipv6
  ttl       = var.ttl
}

resource "dns_cname_record" "this" {
  count = var.enable_cname ? 1 : 0

  zone  = var.zone
  name  = var.name
  cname = var.cname
  ttl   = var.ttl
}

# resource "dns_ns_record_set" "this" {
#   zone        = var.zone
#   name        = var.name
#   nameservers = var.nameservers
#   ttl         = var.ttl
# }

resource "dns_ptr_record" "this" {
  count = var.enable_ptr ? 1 : 0

  zone = var.ptr_zone
  name = var.ptr_name
  ptr  = var.ptr
  ttl  = 300
}