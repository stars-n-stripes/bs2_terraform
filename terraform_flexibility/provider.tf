terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}


provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "ai-research-inator" {
  name = "ai-research-inator"
}
