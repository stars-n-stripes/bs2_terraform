resource "digitalocean_droplet" "droplets" {
    count  = var.droplet_count
      image  = "ubuntu-18-04-x64"
        name   = "${var.group_name}-${count.index}"
          region = "nyc1"
            size   = "s-1vcpu-1gb"
          }
