from django.db import models

# Create your models here.

class bar(models.Model):
	name	= models.CharField(max_length=150)
	district= models.CharField(max_length=100)
	tablenum= models.IntegerField(default = 10)

	def __str__(self):
		return self.name
