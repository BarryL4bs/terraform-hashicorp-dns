resource "dns_cname_record" "this" {

  zone  = var.zone
  name  = var.name
  cname = var.cname
  ttl   = var.ttl
}