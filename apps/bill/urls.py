from django.conf.urls import url
from . import views

app_name = 'bill'

urlpatterns=[
    url(r'^payment/', views.index, name='index'),
	url(r'^last/', views.last, name='last'),

]
