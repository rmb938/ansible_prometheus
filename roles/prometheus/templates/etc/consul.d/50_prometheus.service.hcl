# {{ ansible_managed }}

services {
  name = "prometheus"
  id   = "prometheus"
  port = 9090

  check {
    id = "prometheus-http"
    http = "https://{{ ansible_fqdn }}:9090/-/healthy"
    interval = "10s"
  }
}