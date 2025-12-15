variable "hcloud_token" {}

provider "hcloud" {
  token = "${var.hcloud_token}"
}

resource "hcloud_ssh_key" "mykey" {
  name       = "mykey"
  public_key = "public_key"

# Create a server
resource "hcloud_server" "server" {
  name        = "infoseclab"
  image       = "ubuntu-24.04"
  server_type = "cx23"
  location    = "hel1"

  ssh_keys = ["mykey"]
  
}

  
