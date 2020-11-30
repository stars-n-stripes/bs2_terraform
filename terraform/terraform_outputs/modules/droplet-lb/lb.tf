resource "digitalocean_loadbalancer" "www-lb" {
  name   = "lb-${var.group_name}"
  region = "nyc1"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  # Determines whether or not the system is up and healthy 
  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  # Define the droplet ids we'll be forwarding to
  # Note that we need to use a for loop as we're not sure how many droplets there will be beforehand.
  droplet_ids = [
    for droplet in digitalocean_droplet.droplets:
      droplet.id
  ]
}
