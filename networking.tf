resource "scaleway_ip" "blog_ip" {
  server = "${scaleway_server.blog_server.id}"
}

