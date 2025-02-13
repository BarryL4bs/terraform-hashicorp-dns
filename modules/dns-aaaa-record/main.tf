
resource "dns_aaaa_record_set" "this" {

  zone      = var.zone
  name      = var.name
  addresses = var.ipv6
  ttl       = var.ttl
}
