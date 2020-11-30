terraform {
  # Modules need to require providers regardless of requirements of the root project
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 0.13"
}
