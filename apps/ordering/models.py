from django.db import models
from apps.bar.models import *
# Create your models here.

class order(models.Model):
	cust_id = models.IntegerField()
	bar_id = models.IntegerField()
	date = models.CharField(max_length=50)
	party_size = models.IntegerField(default = 0)
	time = models.CharField(max_length=50)
	sumprice = models.IntegerField(default = 0,null = True)
	

class cart(models.Model):
	order_id = models.IntegerField()
	package_id = models.ForeignKey(package)
	amount = models.IntegerField()

