module "groups" {
  source = "modules\/droplet-lb"
  # Define three GROUPS of three droplets and a balancer
  count = 3

  # Define the variables required in the module's variables.tf file
  droplet_count = 3
  group_name = "group1-${count.index}"
}

