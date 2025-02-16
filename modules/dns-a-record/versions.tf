terraform {
  required_version = ">= 1.0"
  
  required_providers {
    assert = {
      source  = "hashicorp/assert"
      version = "0.15.0"
    }

    dns = {
      source  = "hashicorp/dns"
      version = "3.4.2"
    }
  }
}
