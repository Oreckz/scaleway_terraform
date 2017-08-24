data "scaleway_image" "ubuntu" {
  architecture = "x86_64"
  name = "Ubuntu Xenial"
}

resource "scaleway_server" "blog_server" {
  image = "${data.scaleway_image.ubuntu.id}"
  name = "blog_server"
  type = "${var.server_type}"
}
