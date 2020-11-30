variable "do_token" {}
# Leaving the variable blank will tell Terraform to require this variable to be supplied as -var args
# variable "pvt_key" {}
variable "droplet_names" {
  type = list(string)
  # Important note - HCL lists are ORDERED. This means that if we add a new element to the start,
  # we'll end up renaming all of our existing droplets and giving the last droplet an existing name
  # This is more of a fault with the "count" variable being the index for naming
  default = ["first", "second", "third" ]
}

# Sample boolean variable for logical flow within a project
variable "create_droplet"{
  type = bool
  default = true
}
