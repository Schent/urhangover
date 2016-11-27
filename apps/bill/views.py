from django.shortcuts import render
from apps.usermanage.models import *
from apps.ordering.models import *
from apps.bar.models import *
# Create your views here.

def bill(request):

	#user
	user = customer.objects.filter(username = request.session['user'])
	good = order.objects.filter(id = request.session['order_id'])
	b = bar.objects.filter(id = good[0].bar_id)
	top_obj = { 'cust_name' : user[0].name, 'cust_surname':user[0].surname, 'bar':b, 'date':good[0].date, 'time':good[0].time, 'party_size':good[0].party_size}


	#cart
	c = cart.objects.filter(order_id=request.session['order_id'])
		


	return render(request,'bill/bill_page.html',{'top_obj':top_obj, 'c':c})
