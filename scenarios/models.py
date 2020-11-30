from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Scenario(models.Model):
    """
    Scenarios are pre-defined terraform states that are composed of one or more DO resources
    """
    time_limit = models.TimeField()

class Active(models.Model):
    # Information about the particular scenario that is currently active for this user (downrange)
    scenario = models.ForeignKey(Scenario, on_delete=models.CASCADE)
    user = models.OneToOneField(User)

