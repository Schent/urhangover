from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from apps.bar.models import *
from apps.ordering.models import *
from apps.usermanage.models import *
import datetime


# Create your views here.
def showpage(request):
	print ("showpage");
	try:
		bar_name = request.GET['bar_name']
		bar_id = request.GET['bar_id']
		print ("\n" + bar_name + "\n")
	except:
		bar_name = "OUR PARTNER"
		bar_id = ""
		print (bar_name);
	item = bar.objects.filter(id = bar_id);
	p = package.objects.filter(bar_id = bar_id);
	d = datetime.datetime.now();
	print (p)
	print (d)
	return render(request,'ordering/B_01.html',{'item':item,'p':p, 'd':d})


def preorder(request):
	#try get cust_id
	try:
		print (request.session['user'])
		userobj = customer.objects.filter(username = request.session['user'])	
		cust_id = userobj[0].id 
		
		#get value
		date = request.POST.get('date')
		party_size = int(request.POST.get('party_size'))
		time = request.POST.get('time')
		p_amount = request.POST.getlist('p_amount')
		item = int(request.POST.get('item'))
		p = package.objects.filter(bar_id=item)

		#insert to oreder table	
		r = order(cust_id=cust_id, bar_id=item ,date=date, time=time, party_size=party_size);
		r.save();
		order_id = r.id


		#insert to cart table
		for a in p_amount:
			if a != '0' :
				i = p_amount.index(a);
				amount = a;
				package_id = p[i].id
				print (amount)
				print (package_id)
				print (order_id)
				c = cart.objects.create(order_id=order_id, package_id_id=package_id, amount=amount)
				c.save();


		print (date)
		print (party_size)
		print (time)
		print (p_amount)
		print (item)
		print (package)
		print (cust_id)
		request.session['order_id'] = order_id
		return redirect('/bill/payment')
	except:
		return redirect('/gotologin/')
	

