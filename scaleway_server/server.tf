data "scaleway_image" "ubuntu" {
  architecture = "${var.image_arch}"
  name = "${var.image_name}"
}

resource "scaleway_server" "server" {
  image = "${data.scaleway_image.ubuntu.id}"
  name = "${var.server_name}"
  type = "${var.server_type}"
}
