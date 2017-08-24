resource "scaleway_ip" "ip" {
  server = "${scaleway_server.server.id}"
}

