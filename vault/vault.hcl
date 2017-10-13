
backend "consul" {
  address = "consul:8501"
  path = "vault/"
  token = "d9f1928e-1f84-407c-ab50-9579de563df5"
  scheme = "http"
  advertise_addr = "http://127.0.0.1:8200"
  acl_datacenter = "dc1"
  acl_default_policy = "deny"
  tls_skip_verify = 1
  }
 
listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}


disable_mlock = true
max_lease_ttl = "25920h"
default_lease_ttl = "720h"

