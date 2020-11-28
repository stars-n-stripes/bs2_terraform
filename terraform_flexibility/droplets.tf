resource "digitalocean_droplet" "test_droplet" {
  #count  = 3 # The count variable is incompatible with for_each
  image  = "ubuntu-18-04-x64"
  # Example of using the 'count' builtin variable 
  #name   = "web.${count.index}"
  # Example of using a list defined in variables.tf (also with builtin "count")
  #name = var.droplet_names[count.index]
  # Example of using a for_each loop to assign names
  for_each = toset(var.droplet_names)
  name = each.value # Note that this line does not need to be right after the for_each call, just sometime after it
  region = "nyc1"
  size   = "s-1vcpu-1gb"

  # Add a provisioner that will echo a message on droplet destruction
  # the local-exec provisioner calls a command on the machine running TF
  provisioner "local-exec" {
    when = destroy
    command = "echo 'Droplet ${self.name} is being destroyed!'"
  }
}
