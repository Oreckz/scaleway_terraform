#Contains core TF configuration

provider "scaleway" {
  organization = "${var.scaleway_access}"
  token = "${var.scaleway_secret}"
  region = "${var.scaleway_region}"
}

