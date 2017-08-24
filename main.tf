#Contains core TF configuration

provider "scaleway" {
  organization = "${var.scaleway_access}"
  token = "${var.scaleway_secret}"
  region = "${var.scaleway_region}"
}

module "server_one" {
  source = "./scaleway_server"

  #Configuration for instance
  server_name = "${var.server_name}"
  server_type = "${var.server_type}"
  image_arch = "${var.image_arch}"
  image_name = "${var.image_name}"
}