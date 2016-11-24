from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
# Create your views here.

def allpage(request):
	return render(request,'Index_page/All.html')


def select(request):
	page = request.GET['page']
	print (page);
	url = "Index_page/" + page + ".html"
	print (url);
	return render(request,url)
