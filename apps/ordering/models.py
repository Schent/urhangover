from django.db import models

# Create your models here.

class order(models.Model):
	cust_id = models.IntegerField()
	bar_id = models.IntegerField()
	date = models.TextField()
	sumprice = models.IntegerField(default = 0,null = True)

class cart(models.Model):
	order_id = models.IntegerField()
	package_id = models.IntegerField()
	amount = models.IntegerField()

