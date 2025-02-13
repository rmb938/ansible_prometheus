# {{ ansible_managed }}

services {
  name = "prometheus"
  id   = "prometheus"
  port = 9090

  check {
    id = "prometheus-http"
    http = "http://127.0.0.1:9090/healthz"
    interval = "10s"
  }
}