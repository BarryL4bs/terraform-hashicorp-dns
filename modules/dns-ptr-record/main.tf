resource "dns_ptr_record" "this" {

  zone = var.zone
  name = var.name
  ptr  = var.ptr
  ttl  = var.ttl
}