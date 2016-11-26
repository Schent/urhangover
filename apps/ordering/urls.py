from django.conf.urls import url
from . import views

app_name = 'ordering'

urlpatterns=[
    url(r'^showpage', views.showpage, name='showpage'),

]
