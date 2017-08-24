data "scaleway_image" "ubuntu" {
  architecture = "arm"
  name = "Ubuntu Xenial"
}

resource "scaleway_server" "blog_server" {
  image = "${data.scaleway_image.ubuntu.id}"
  name = "blog_server"
  type = "${var.server_type}"

  volume {
    size_in_gb = 20
    type = "l_ssd"
  }
}