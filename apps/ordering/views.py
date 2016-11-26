from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from apps.bar.models import *
# Create your views here.
def showpage(request):
	try:
		bar_name = request.GET['bar_name']
		bar_id = request.GET['bar_id']
		print ("\n" + bar_name + "\n")
	except:
		bar_name = "OUR PARTNER"
		bar_id = ""
		print (bar_name);
	item = bar.objects.filter(id = bar_id);
	return render(request,'ordering/B_01.html',{'item':item})
