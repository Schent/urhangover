from django.conf.urls import url
from . import views

app_name = 'bar'

urlpatterns=[
    url(r'^$', views.allpage, name='allpage'),
    url(r'^select', views.select, name='select'),


]
