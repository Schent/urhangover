from django.db import models

# Create your models here.

class bar(models.Model):
	name	= models.CharField(max_length=150)
	district= models.CharField(max_length=100)
	tablenum= models.IntegerField(default = 10)

	def __str__(self):
		return self.name

class package(models.Model):
	bar_id = models.IntegerField(default = 0)
	name = models.CharField(max_length=150)
	price = models.IntegerField(default = 0)


