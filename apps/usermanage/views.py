from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from apps.usermanage.models import *
from apps.usermanage.forms import *
# Create your views here.
#return to homepage.
def homepage(request):
	return render(request,'Home_page.html')

def gotologin(request):
	try:
		text = request.session['message']
		request.session.clear()
	except:
		text = ""
	print ("\n\n" + text + "\n\n");
	return render(request,'Login_page.html',{"text":text})

#checking user loggin.
def login(request):
	print ("call login");
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
			return redirect('/bar/showbar')
		except:
			print("\n\ninvalid username or password\n\n");

	MyLoginForm = LoginForm()
	print ("invalid"); # invalid form (null)
	request.session['message'] = "invalid username or paaword"
	print (request.session['message']);
	return redirect('/gotologin/')



#user logout
def logout(request):
	try:
		print("\n\nlogout\n\n");
		a = customer.objects.get(username = request.session['user'])
		a.active = 0
		a.save()
		request.session.clear()
		return redirect('/')
	except:
		request.session.clear()
		return redirect('/')

#register 

def gotoregister(request):
	try:
		text = request.session['message']
		request.session.clear()
	except:
		text = ""
	print ("\n\n" + text + "\n\n");
	return render(request,'Register_page.html',{"text":text})

def register(request):
	if request.method == "POST":
		form = RegisForm(request.POST)

		if form.is_valid():
			#get value 
			username = request.POST.get('username')
			password = request.POST.get('password')
			name	 = request.POST.get('name')
			surname  = request.POST.get('surname')
			tel		 = request.POST.get('tel')
			email    = request.POST.get('email')
		
			#check same value in db
			try:
				customer.objects.get(username = username)
				request.session['message'] = "username already used"
				#return already have this username
			except:
				try:
					customer.objects.get(email = email)
					request.session['message'] = "email already used"
					#return already have this email
				except:
					a = customer(username = username, password = password, name = name, surname = surname, tel = tel, email = email);
					a.save()
					request.session['message'] = "registration complete"
		else:
			request.session['message'] = "please filled all forms"
	return redirect('/gotoregister/')
