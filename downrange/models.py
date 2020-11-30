from django.db import models

# Create your models here.
# DO TF provider instance:
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record

class Droplet(models.Model):
    # Note: we'll define ALL droplet templates here, regardless of role
    # Roles will include: Tgt VM, Tgt Docker, Student Gateway, IDS, Student VM
    # https://www.digitalocean.com/docs/droplets/
    name = models.CharField(max_length=64, default='do', null=True, blank=True)
class CloudFirewall(models.Model):
    # CloudFirewalls will be good for when we need to purely block traffic (i.e., trying to teach tunneling)
    pass
class LoadBalancer(models.Model):
    # May also be used as a firewall that logs in a pinch - will need to figure out how to do that
    # Ref: https://www.digitalocean.com/docs/networking/load-balancers/#proxy-protocol
    # Q/A: https://www.digitalocean.com/community/questions/what-logging-is-available-from-cloud-firewalls-load-balancers-and-dns
    pass
class DNS:
    pass
class VPC:
    # VPCs will allow us to isolate droplets on a network
    pass