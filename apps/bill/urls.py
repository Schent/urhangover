from django.conf.urls import url
from . import views

app_name = 'bill'

urlpatterns=[
    url(r'^', views.bill, name='bill'),

]
