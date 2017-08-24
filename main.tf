#Contains core TF configuration

provider "scaleway" {
  organization = "${var.scaleway_access}"
  token = "${var.scaleway_secret}"
  region = "${var.scaleway_region}"
}

module "scaleway_server" {
  source = "./scaleway_server"
  server_name = "blog"
  server_type = "VC1S"
  image_arch = "x86_64"
  image_name = "Ubuntu Xenial"
}