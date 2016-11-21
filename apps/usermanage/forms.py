# from.py for checking login and register value

from django import forms
from .models import *

class LoginForm(forms.ModelForm):
    
    class Meta:
        model = customer
        fields = ('username', 'password')
