from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from apps.usermanage.models import *
from apps.usermanage.forms import *
# Create your views here.

#return to homepage.
def homepage(request):
	return render(request,'homepage.html')

#checking user loggin.
def login(request):
	username = "Invalid username or password"
    
	if request.method == "POST":  #recive post-value and checking
		MyLoginForm = LoginForm(request.POST)  #call function if form.py
		#print ("call login")
		if MyLoginForm.is_valid():
			print ("\n\nvalid");
		try:
			#get username from databases and set active=1
			username = request.POST.get('username')
			request.session['user'] = username
			a = customer.objects.get(username = username)
			a.active = 0
			a.save()
			print (request.session['user']+ "\n\n");
			return render(request,'bar.html')
		except:
			print("\n\ninvalid username or password\n\n");

	MyLoginForm = LoginForm()
	print ("invalid"); # invalid form (null)
	return redirect('/')



#user logout
def logout(request):
	print("\n\nlogout\n\n");
	a = customer.objects.get(username = request.session['user'])
	a.active = 0
	a.save()
	return render(request, 'homepage.html')
