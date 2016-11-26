# from.py for checking login and register value

from django import forms
from .models import *
#login form 
class LoginForm(forms.ModelForm):    
    class Meta:
        model = customer
        fields = ('username', 'password')

#register form 
class RegisForm(forms.ModelForm):
	class Meta:
		model = customer
		fields = ('username', 'password', 'name', 'surname', 'tel', 'email') 
