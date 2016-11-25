from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from .models import * 
# Create your views here.

#def allpage(request):
#	return render(request,'Index_page/All.html')


#def select(request):
#	page = request.GET['page']
#	print (page);
#	url = "Index_page/" + page + ".html"
#	print (url);
#	return render(request,url)

def showbar(request):
	try:
		district = request.GET['district']
		box = bar.objects.filter(district = district)
		print ("\n" + district + "\n")
	except:
		box = bar.objects.all()
		district = "OUR PARTNER"
	c = [1,2,3]
	return render(request,'bar_template/showbar.html',{'box':box, 'district' : district, 'c':c})
