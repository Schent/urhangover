from django.db import models

# Create your models here.

#customer table 
class customer(models.Model):
    name     = models.CharField(max_length=100)
    surname  = models.CharField(max_length=100)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    tel      = models.CharField(max_length=15) 
    email    = models.EmailField(max_length=100)
    active   = models.IntegerField(default=0)
