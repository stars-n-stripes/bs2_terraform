output "lb_ip" {
  # Modules will produce these outputs on their own
  value = digitalocean_loadbalancer.www-lb.ip
}
